

from fastapi import APIRouter
from backend.schemas.assessment_schema import AssessmentRequest
from backend.database import assessment_collection

router = APIRouter()


@router.post("/career-assessment")
def calculate_career(data: AssessmentRequest):

    scores = {
        "Software Engineer": 0,
        "UI/UX Designer": 0,
        "HR Manager": 0,
        "Data Analyst": 0
    }

    # CAREER EXPLANATIONS
    explanations = {
        "Software Engineer":
            "You enjoy logical thinking, coding, and solving technical problems.",

        "UI/UX Designer":
            "You are creative and enjoy designing user-friendly experiences.",

        "HR Manager":
            "You are good at communication, teamwork, and managing people.",

        "Data Analyst":
            "You enjoy working with data, records, and analytical thinking."
    }

    # CALCULATE SCORES
    for ans in data.answers:

        if ans == 0:
            scores["Software Engineer"] += 1

        elif ans == 1:
            scores["UI/UX Designer"] += 1

        elif ans == 2:
            scores["HR Manager"] += 1

        elif ans == 3:
            scores["Data Analyst"] += 1

    # BEST CAREER
    top_career = max(scores, key=scores.get)

    top_score = scores[top_career]

    total_questions = len(data.answers)

    # PERCENTAGE
    match_percent = int((top_score / total_questions) * 100)

    # SAVE IN DATABASE
    assessment_data = {
        "answers": data.answers,
        "careerName": top_career,
        "matchPercent": match_percent,
        "scores": scores,
        "explanation": explanations[top_career]
    }

    result = assessment_collection.insert_one(assessment_data)

    return {
        "success": True,
        "id": str(result.inserted_id),
        "careerName": top_career,
        "matchPercent": match_percent,
        "scores": scores,
        "explanation": explanations[top_career]
    }

