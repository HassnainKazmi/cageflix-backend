from rapidfuzz import fuzz
from sqlalchemy import or_, select

from app.database import cast, database, persons, ratings, titles
from app.models.search import TitleResult


def best_fuzzy_score(a, b):
    return max(fuzz.token_set_ratio(a, b), fuzz.partial_ratio(a, b), fuzz.ratio(a, b))


async def fetch_candidate_titles(text: str, skip: int, limit: int):
    query = (
        select(
            titles.c.tconst,
            titles.c.primaryTitle,
            titles.c.genres,
            titles.c.startYear,
        )
        .where(
            or_(
                titles.c.primaryTitle.ilike(f"%{text}%"),
                titles.c.genres.ilike(f"%{text}%"),
                titles.c.titleType.ilike(f"%{text}%"),
            )
        )
        .offset(skip)
        .limit(limit)
    )
    return await database.fetch_all(query)


async def fetch_ratings_for_titles(tconsts: list[str]):
    ratings_query = select(
        ratings.c.tconst,
        ratings.c.averageRating,
        ratings.c.numVotes,
    ).where(ratings.c.tconst.in_(tconsts))
    rating_rows = await database.fetch_all(ratings_query)
    tconst_to_rating = {row["tconst"]: row for row in rating_rows}
    return tconst_to_rating


async def fetch_cast_for_titles(tconsts: list[str]):
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
    cast_rows = await database.fetch_all(cast_query)
    return cast_rows


async def fuzzy_search(text, skip: int = 0, limit: int = 20):
    """Fuzzy search for titles, genres, and fellow actors with pagination and scoring."""

    candidate_titles = await fetch_candidate_titles(text, skip, limit)
    tconsts = [row["tconst"] for row in candidate_titles]
    if not tconsts:
        candidate_titles = await fetch_candidate_titles("", 0, 200)
        tconsts = [row["tconst"] for row in candidate_titles]
        if not tconsts:
            return []

    ratings = await fetch_ratings_for_titles(tconsts)
    cast = await fetch_cast_for_titles(tconsts)

    tconst_to_actors = {}
    for row in cast:
        tconst_to_actors.setdefault(row["tconst"], []).append(row["primaryName"])

    results = []
    for row in candidate_titles:
        genres = row["genres"].split(",") if row["genres"] else []
        actors = tconst_to_actors.get(row["tconst"], [])
        rating_row = ratings.get(row["tconst"], {})

        text_fields = [
            row["primaryTitle"] or "",
            ",".join(genres),
            " ".join(actors),
        ]
        scores = [best_fuzzy_score(text, field) for field in text_fields]
        score = max(scores)

        if score > 35:
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
                    score=score,
                )
            )
    results = sorted(results, key=lambda x: x.score, reverse=True)
    return results[:limit]
