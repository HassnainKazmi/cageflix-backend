from sqlalchemy import or_, select

from app.database import cast, database, persons, ratings, titles

ACTOR_CATEGORIES = ["actor", "actress"]


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
            cast.c.category.in_(ACTOR_CATEGORIES),
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
            cast.c.category.in_(ACTOR_CATEGORIES),
            persons.c.primaryName != "Nicolas Cage",
            cast.c.tconst.in_(tconsts),
        )
    )
    return await database.fetch_all(cast_query)
