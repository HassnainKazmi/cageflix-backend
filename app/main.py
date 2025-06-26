import logging
from contextlib import asynccontextmanager

from fastapi import FastAPI

from app.extract_cageflix_data import extract_cageflix_data
from app.logging_conf import configure_logging

logger = logging.getLogger(__name__)


@asynccontextmanager
async def lifespan(app: FastAPI):
    configure_logging()
    logger.info("Extracting data...")
    data = extract_cageflix_data()
    print({"cageflix_data": data})
    yield


app = FastAPI(lifespan=lifespan)
