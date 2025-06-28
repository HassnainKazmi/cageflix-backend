from sqlalchemy import select

from app.database import database, ratings, titles


async def get_all_titles(
    skip: int = 0, limit: int = 20, title_types: list[str] | None = None
):
    query = select(
        titles.c.tconst,
        titles.c.titleType,
        titles.c.primaryTitle,
        titles.c.originalTitle,
        titles.c.isAdult,
        titles.c.startYear,
        titles.c.endYear,
        titles.c.runtimeMinutes,
        titles.c.genres,
        ratings.c.averageRating,
        ratings.c.numVotes,
    ).select_from(titles.outerjoin(ratings, titles.c.tconst == ratings.c.tconst))

    if title_types:
        query = query.where(titles.c.titleType.in_(title_types))

    query = query.order_by(titles.c.startYear.desc()).offset(skip).limit(limit)
    rows = await database.fetch_all(query)

    results = [
        {
            "tconst": row["tconst"],
            "titleType": row["titleType"],
            "primaryTitle": row["primaryTitle"],
            "originalTitle": row["originalTitle"],
            "isAdult": row["isAdult"],
            "startYear": row["startYear"],
            "endYear": row["endYear"],
            "runtimeMinutes": row["runtimeMinutes"],
            "genres": row["genres"].split(",") if row["genres"] else [],
            "averageRating": row["averageRating"],
            "numVotes": row["numVotes"],
        }
        for row in rows
    ]
    return results


async def get_title_by_id(tconst: str):
    query = (
        select(
            titles.c.tconst,
            titles.c.titleType,
            titles.c.primaryTitle,
            titles.c.originalTitle,
            titles.c.isAdult,
            titles.c.startYear,
            titles.c.endYear,
            titles.c.runtimeMinutes,
            titles.c.genres,
            ratings.c.averageRating,
            ratings.c.numVotes,
        )
        .select_from(titles.outerjoin(ratings, titles.c.tconst == ratings.c.tconst))
        .where(titles.c.tconst == tconst)
    )

    row = await database.fetch_one(query)
    if row is None:
        return None

    result = {
        "tconst": row["tconst"],
        "titleType": row["titleType"],
        "primaryTitle": row["primaryTitle"],
        "originalTitle": row["originalTitle"],
        "isAdult": row["isAdult"],
        "startYear": row["startYear"],
        "endYear": row["endYear"],
        "runtimeMinutes": row["runtimeMinutes"],
        "genres": row["genres"].split(",") if row["genres"] else [],
        "averageRating": row["averageRating"],
        "numVotes": row["numVotes"],
    }
    return result
