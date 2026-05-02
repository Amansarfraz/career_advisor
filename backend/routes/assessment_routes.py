from fastapi import APIRouter
from backend.schemas.assessment_schema import AssessmentRequest

router = APIRouter()

@router.post("/career-assessment")
def calculate_career(data: AssessmentRequest):

    scores = {
        "software engineer": 0,
        "ui/ux designer": 0,
        "hr manager": 0,
        "data analyst": 0
    }

    for ans in data.answers:
        if ans == 0:
            scores["software engineer"] += 1
        elif ans == 1:
            scores["ui/ux designer"] += 1
        elif ans == 2:
            scores["hr manager"] += 1
        elif ans == 3:
            scores["data analyst"] += 1

    top_career = max(scores, key=scores.get)
    top_score = scores[top_career]

    total = len(data.answers)

    if total == 0:
        return {"error": "No answers provided"}

    match_percent = int((top_score / total) * 100)

    return {
        "careerName": top_career.title(),
        "matchPercent": match_percent,
        "explanation": "Generated based on your answers"
    }