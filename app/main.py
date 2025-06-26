import logging
from contextlib import asynccontextmanager

from fastapi import FastAPI

from app.database import cast, database, persons, ratings, titles
from app.extract_cageflix_data import extract_cageflix_data
from app.logging_conf import configure_logging
from app.routers.titles import router as titles_router
from app.utils import bulk_insert

logger = logging.getLogger(__name__)


@asynccontextmanager
async def lifespan(app: FastAPI):
    configure_logging()
    logger.info("Starting app and connecting to database ...")
    await database.connect()

    try:
        logger.info("Extracting data...")
        data = extract_cageflix_data()

        logger.info(
            f"Data extracted: titles={data['titles'].shape}, "
            f"ratings={data['ratings'].shape}, "
            f"cast={data['cast'].shape}, "
            f"persons={data['persons'].shape}"
        )

        await bulk_insert(persons, data["persons"], ["nconst"])
        await bulk_insert(titles, data["titles"], ["tconst"])
        await bulk_insert(ratings, data["ratings"], ["tconst"])
        await bulk_insert(cast, data["cast"], ["tconst", "nconst"])

        logger.info("Data extraction and insertion complete!")
    except Exception as e:
        logger.exception(f"Startup ETL pipeline failed: {e}")

    yield
    await database.disconnect()


app = FastAPI(lifespan=lifespan)
app.include_router(titles_router, prefix="/api/v1")
