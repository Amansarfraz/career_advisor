# from pydantic import BaseModel
# from typing import List

# from backend.database import assessment_collection
# class AssessmentRequest(BaseModel):
#     answers: List[int]


# class CareerResponse(BaseModel):
#     careerName: str
#     explanation: str
#     matchPercent: int
from pydantic import BaseModel
from typing import List

class AssessmentRequest(BaseModel):
    answers: List[int]


class CareerResponse(BaseModel):
    careerName: str
    explanation: str
    matchPercent: int
    