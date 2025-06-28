from typing import Optional

from pydantic import BaseModel


class Titles(BaseModel):
    tconst: str
    primaryTitle: str
    titleType: str
    originalTitle: Optional[str] = None
    isAdult: Optional[bool] = None
    startYear: Optional[str] = None
    cast: Optional[list[str]] = None
    endYear: Optional[str] = None
    runtimeMinutes: Optional[str] = None
    genres: list[str]
    averageRating: Optional[float] = None
    numVotes: Optional[int] = None
