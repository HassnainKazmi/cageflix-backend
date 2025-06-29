from typing import Optional

from pydantic import BaseModel


class SearchResults(BaseModel):
    tconst: str
    primaryTitle: str
    genres: list[str]
    startYear: Optional[str] = None
    cast: list[str]
    averageRating: Optional[float] = None
    numVotes: Optional[int] = None
    score: float
    matchField: str
    matchValue: str
