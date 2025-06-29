import logging
from contextlib import asynccontextmanager

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.database import cast, database, persons, ratings, titles
from app.extract_cageflix_data import extract_cageflix_data
from app.logging_conf import configure_logging
from app.routers.search import router as search_router
from app.routers.titles import router as titles_router
from app.utils import bulk_insert, is_table_populated

logger = logging.getLogger(__name__)


@asynccontextmanager
async def lifespan(app: FastAPI):
    configure_logging()
    logger.info("Starting app and connecting to database ...")
    await database.connect()

    try:
        if not await is_table_populated(database, titles):
            logger.info("No existing data found. Running pipeline...")

            data = extract_cageflix_data()
            logger.info(
                f"Data extracted: titles={data['titles'].shape}, "
                f"ratings={data['ratings'].shape}, "
                f"cast={data['cast'].shape}, "
                f"persons={data['persons'].shape}"
            )
            if data:
                await bulk_insert(persons, data["persons"], ["nconst"])
                await bulk_insert(titles, data["titles"], ["tconst"])
                await bulk_insert(ratings, data["ratings"], ["tconst"])
                await bulk_insert(cast, data["cast"], ["tconst", "nconst"])
                logger.info("Data extraction and insertion complete!")
        else:
            logger.info("Existing data detected. Skipping ETL pipeline.")
    except Exception as e:
        logger.error("Startup pipeline failed", exc_info=e)
        raise
    finally:
        yield
        await database.disconnect()


app = FastAPI(lifespan=lifespan)

origins = ["*"]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(titles_router, prefix="/api/v1")
app.include_router(search_router, prefix="/api/v1")
