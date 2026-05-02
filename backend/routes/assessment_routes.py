 
# from fastapi import APIRouter
# from backend.schemas.assessment_schema import AssessmentRequest

# router = APIRouter()

# @router.post("/career-assessment")
# def calculate_career(data: AssessmentRequest):

#     scores = {"tech": 0, "design": 0, "social": 0, "data": 0}

#     for ans in data.answers:
#         if ans == 0:
#             scores["tech"] += 1
#         elif ans == 1:
#             scores["design"] += 1
#         elif ans == 2:
#             scores["social"] += 1
#         elif ans == 3:
#             scores["data"] += 1

#     top_category = max(scores, key=scores.get)

#     career_map = {
#         "tech": "Software Engineer",
#         "design": "UI/UX Designer",
#         "social": "HR Manager",
#         "data": "Data Analyst"
#     }

#     return {
#         "careerName": career_map[top_category],
#         "matchPercent": 85,
#         "explanation": "Based on your answers"
#     }
from fastapi import APIRouter
from backend.schemas.assessment_schema import AssessmentRequest

router = APIRouter()

@router.post("/career-assessment")
def calculate_career(data: AssessmentRequest):

    scores = {"tech": 0, "design": 0, "social": 0, "data": 0}

    for ans in data.answers:
        if ans == 0:
            scores["tech"] += 1
        elif ans == 1:
            scores["design"] += 1
        elif ans == 2:
            scores["social"] += 1
        elif ans == 3:
            scores["data"] += 1

    top_category = max(scores, key=scores.get)

    career_map = {
        "tech": "Software Engineer",
        "design": "UI/UX Designer",
        "social": "HR Manager",
        "data": "Data Analyst"
    }

    return {
        "success": True,
        "careerName": career_map[top_category],
        "matchPercent": 85,
        "explanation": "Based on your answers"
    }