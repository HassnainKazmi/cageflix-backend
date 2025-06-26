from typing import Optional

from pydantic import BaseModel


class Titles(BaseModel):
    tconst: str
    titleType: str
    primaryTitle: str
    originalTitle: Optional[str] = None
    isAdult: Optional[bool] = None
    startYear: Optional[str] = None
    endYear: Optional[str] = None
    runtimeMinutes: Optional[str] = None
    genres: list[str]
    averageRating: Optional[float] = None
    numVotes: Optional[int] = None
