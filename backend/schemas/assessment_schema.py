from pydantic import BaseModel
from typing import List
from schemas.auth_schema import LoginRequest, LoginResponse
from database import assessment_collection


class AssessmentRequest(BaseModel):
    answers: List[int]


class CareerResponse(BaseModel):
    careerName: str
    explanation: str
    matchPercent: int