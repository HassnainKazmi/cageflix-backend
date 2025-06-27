import logging

from fastapi import APIRouter, HTTPException, Query, status

from app.models.search import TitleResult
from app.services.search import fuzzy_search

router = APIRouter()
logger = logging.getLogger(__name__)


@router.get("/search", response_model=list[TitleResult])
async def search_result(text: str = Query(..., description="Search text from user")):
    """Search for results based on user input."""
    logger.info(f"Searching results with text: {text}")
    try:
        results = await fuzzy_search(text)
        if not results:
            return []
        return results
    except Exception as e:
        logger.error(f"Failed to search titles for text {text}", exc_info=e)
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Internal Server Error",
        )
