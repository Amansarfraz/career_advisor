from pydantic import BaseModel
from typing import List

class AssessmentRequest(BaseModel):
    answers: List[int]


class CareerResponse(BaseModel):
    careerName: str
    explanation: str
    matchPercent: int