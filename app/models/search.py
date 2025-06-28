from typing import Optional

from pydantic import BaseModel


class TitleResult(BaseModel):
    tconst: str
    primaryTitle: str
    genres: list[str]
    startYear: Optional[str]
    cast: Optional[list[str]] = None
    averageRating: Optional[float]
    numVotes: Optional[int]
    score: float
    matchField: str
    matchValue: str
