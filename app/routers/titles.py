import logging

from fastapi import APIRouter, HTTPException, status

from app.models.titles import Titles
from app.services.titles import get_all_titles, get_title_by_id

router = APIRouter()

logger = logging.getLogger(__name__)


@router.get("/titles", response_model=list[Titles])
async def read_titles(skip: int = 0, limit: int = 20, titleType: str | None = None):
    """Fetches titles, optionally filtered by one or more title types."""
    logger.info(f"Getting titles: title_type: {titleType}")
    try:
        if titleType is None:
            title_types = None
        elif titleType == "movie":
            title_types = ["movie"]
        else:
            title_types = [t.strip() for t in titleType.split(",") if t.strip()]
        titles = await get_all_titles(skip, limit, title_types)
        if not titles:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail="No titles found",
            )
        return titles
    except Exception as e:
        logger.error(f"Failed to get titles {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Internal Server Error",
        )


@router.get("/title", response_model=Titles)
async def read_title_by_id(tconst: str):
    """Fetch a single title by its tconst."""
    logger.info(f"Getting title by id: {tconst}")
    try:
        title = await get_title_by_id(tconst)
        if not title:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail="Title not found",
            )
        return title
    except Exception as e:
        logger.error(f"Failed to get title {tconst}: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Internal Server Error",
        )
