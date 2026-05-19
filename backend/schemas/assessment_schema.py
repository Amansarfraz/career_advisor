
# from pydantic import BaseModel
# from typing import List

# class AssessmentRequest(BaseModel):
#     answers: List[int]


# class CareerResponse(BaseModel):
#     careerName: str
#     explanation: str
#     matchPercent: int
    

from pydantic import BaseModel, field_validator
from typing import List


class AssessmentRequest(BaseModel):
    answers: List[int]

    @field_validator("answers")
    @classmethod
    def validate_answers(cls, value):

        # EXACTLY 10 QUESTIONS
        if len(value) != 10:
            raise ValueError("Exactly 10 answers are required")

        # ONLY 0-3 ALLOWED
        for ans in value:
            if ans not in [0, 1, 2, 3]:
                raise ValueError(
                    "Answers must only contain values 0,1,2,3"
                )

        return value


class CareerResponse(BaseModel):
    careerName: str
    explanation: str
    matchPercent: int

