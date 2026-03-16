from fastapi import APIRouter
from schemas.assessment_schema import AssessmentRequest
from database import assessment_collection

router = APIRouter()

@router.post("/career-assessment")
def calculate_career(data: AssessmentRequest):

    scores = {"tech":0,"design":0,"social":0,"data":0}

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
    top_score = scores[top_category]

    total_questions = len(data.answers)

    match_percent = 60 + int((top_score/total_questions)*37)

    career_map = {
        "tech":{
            "name":"Software Engineer",
            "explanation":"You love technology and logical thinking."
        },
        "design":{
            "name":"UI/UX Designer",
            "explanation":"You have a creative mind and enjoy design."
        },
        "social":{
            "name":"HR Manager / Counselor",
            "explanation":"You enjoy helping people."
        },
        "data":{
            "name":"Data / Business Analyst",
            "explanation":"You like analyzing data."
        }
    }

    result = {
        "careerName": career_map[top_category]["name"],
        "explanation": career_map[top_category]["explanation"],
        "matchPercent": match_percent
    }

    assessment_collection.insert_one({
        "answers": data.answers,
        "result": result
    })

    return result