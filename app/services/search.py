from rapidfuzz import fuzz

from app.models.search import TitleResult
from app.services.helper import (
    fetch_candidate_titles,
    fetch_cast_for_titles,
    fetch_ratings_for_titles,
)

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
