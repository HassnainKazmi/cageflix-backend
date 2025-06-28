from sqlalchemy import select

from app.database import database, ratings, titles
from app.services.helper import fetch_cast_for_titles


async def get_all_titles(
    skip: int = 0, limit: int = 20, title_types: list[str] | None = None
):
    query = select(
        titles.c.tconst,
        titles.c.primaryTitle,
        titles.c.titleType,
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

    tconsts = [row["tconst"] for row in rows]
    cast_rows = await fetch_cast_for_titles(tconsts)
    tconst_to_actors = {}
    for row in cast_rows:
        tconst_to_actors.setdefault(row["tconst"], []).append(row["primaryName"])

    results = []
    for row in rows:
        results.append(
            {
                "tconst": row["tconst"],
                "titleType": row["titleType"],
                "primaryTitle": row["primaryTitle"],
                "originalTitle": row["originalTitle"],
                "isAdult": row["isAdult"],
                "startYear": row["startYear"],
                "cast": tconst_to_actors.get(row["tconst"], []),
                "endYear": row["endYear"],
                "runtimeMinutes": row["runtimeMinutes"],
                "genres": row["genres"].split(",") if row["genres"] else [],
                "averageRating": row["averageRating"],
                "numVotes": row["numVotes"],
            }
        )

    return results


async def get_title_by_id(tconst: str):
    query = (
        select(
            titles.c.tconst,
            titles.c.primaryTitle,
            titles.c.titleType,
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

    cast_rows = await fetch_cast_for_titles([tconst])
    actors = [r["primaryName"] for r in cast_rows]

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
        "cast": actors,
    }
    return result
