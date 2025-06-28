from rapidfuzz import fuzz
from sqlalchemy import or_, select

from app.database import cast, database, persons, ratings, titles
from app.models.search import TitleResult

FUZZY_MATCH_THRESHOLD = 60


def best_fuzzy_score(a: str, b: str):
    return max(fuzz.token_set_ratio(a, b), fuzz.partial_ratio(a, b), fuzz.ratio(a, b))


def score_match_fields(text: str, title: str, genres: list[str], actors: list[str]):
    """
    Determine which field (title, genre, or actor) best matches the search text.
    Returns field_name, score, matched_value.
    """
    title_score = best_fuzzy_score(text, title or "")
    genre_scores = [(genre, best_fuzzy_score(text, genre)) for genre in genres]
    actor_scores = [(actor, best_fuzzy_score(text, actor)) for actor in actors]

    best_genre, genre_score = max(genre_scores, key=lambda x: x[1], default=("", 0))
    best_actor, actor_score = max(actor_scores, key=lambda x: x[1], default=("", 0))

    scored_fields = [
        ("primaryTitle", title_score, title or ""),
        ("genres", genre_score, best_genre),
        ("fellowActors", actor_score, best_actor),
    ]
    return max(scored_fields, key=lambda x: x[1])


async def fetch_candidate_titles(text: str, skip: int, limit: int):
    """
    Fetch candidate titles matching the search text.
    Returns a list of dicts.
    """
    query_titles = select(
        titles.c.tconst,
        titles.c.primaryTitle,
        titles.c.genres,
        titles.c.startYear,
    ).where(
        or_(
            titles.c.primaryTitle.ilike(f"%{text}%"),
            titles.c.genres.ilike(f"%{text}%"),
        )
    )
    actor_join = (
        select(
            titles.c.tconst,
            titles.c.primaryTitle,
            titles.c.genres,
            titles.c.startYear,
        )
        .select_from(
            titles.join(cast, titles.c.tconst == cast.c.tconst).join(
                persons, cast.c.nconst == persons.c.nconst
            )
        )
        .where(
            cast.c.category.in_(["actor", "actress"]),
            persons.c.primaryName.ilike(f"%{text}%"),
        )
    )

    union_query = query_titles.union_all(actor_join)
    rows = await database.fetch_all(union_query)

    unique_titles = {row["tconst"]: row for row in rows}
    candidate_titles = list(unique_titles.values())[skip : skip + limit]
    return candidate_titles


async def fetch_ratings_for_titles(tconsts: list[str]):
    """Fetch ratings for all provided tconsts and return a dict."""
    ratings_query = select(
        ratings.c.tconst,
        ratings.c.averageRating,
        ratings.c.numVotes,
    ).where(ratings.c.tconst.in_(tconsts))
    rating_rows = await database.fetch_all(ratings_query)
    return {row["tconst"]: row for row in rating_rows}


async def fetch_cast_for_titles(tconsts: list[str]):
    """Fetch cast members for all provided tconsts."""
    cast_query = (
        select(
            cast.c.tconst,
            persons.c.primaryName,
        )
        .select_from(cast.join(persons, cast.c.nconst == persons.c.nconst))
        .where(
            cast.c.category.in_(["actor", "actress"]),
            persons.c.primaryName != "Nicolas Cage",
            cast.c.tconst.in_(tconsts),
        )
    )
    return await database.fetch_all(cast_query)


async def fuzzy_search(text: str, skip: int = 0, limit: int = 20):
    """
    Fuzzy search for titles, genres, or fellow actors with scoring.
    Returns a sorted list of TitleResult.
    """
    candidate_titles = await fetch_candidate_titles(text, skip, limit)
    tconsts = [row["tconst"] for row in candidate_titles]

    if not tconsts:
        candidate_titles = await fetch_candidate_titles("", 0, 500)
        tconsts = [row["tconst"] for row in candidate_titles]
        if not tconsts:
            return []

    ratings = await fetch_ratings_for_titles(tconsts)
    cast_rows = await fetch_cast_for_titles(tconsts)

    tconst_to_actors = {}
    for row in cast_rows:
        tconst_to_actors.setdefault(row["tconst"], []).append(row["primaryName"])

    results = []
    for row in candidate_titles:
        genres = row["genres"].split(",") if row["genres"] else []
        actors = tconst_to_actors.get(row["tconst"], [])
        rating_row = ratings.get(row["tconst"], {})

        best_field, best_score, best_value = score_match_fields(
            text, row["primaryTitle"], genres, actors
        )
        if best_score > FUZZY_MATCH_THRESHOLD:
            results.append(
                TitleResult(
                    tconst=row["tconst"],
                    primaryTitle=row["primaryTitle"],
                    genres=genres,
                    startYear=row["startYear"],
                    description="",
                    fellowActors=actors,
                    averageRating=rating_row["averageRating"] if rating_row else None,
                    numVotes=rating_row["numVotes"] if rating_row else None,
                    score=best_score,
                    matchField=best_field,
                    matchValue=best_value,
                )
            )

    results = sorted(
        results,
        key=lambda x: (
            x.matchField == "primaryTitle",
            x.matchField == "genres",
            x.score,
        ),
        reverse=True,
    )
    return results[:limit]
