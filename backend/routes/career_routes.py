


# from fastapi import APIRouter
# from backend.database import career_collection

# router = APIRouter()

# careers = {
#     "software-engineer": {
#         "careerName": "Software Engineer",
#         "description": "Build software systems",
#         "salary": "80k-120k",
#         "skills": ["Coding", "Problem Solving"]
#     },
#     "ui-ux-designer": {
#         "careerName": "UI/UX Designer",
#         "description": "Design user interfaces",
#         "salary": "60k-100k",
#         "skills": ["Creativity", "Design"]
#     },
#     "hr-manager": {
#         "careerName": "HR Manager",
#         "description": "Manage employees",
#         "salary": "50k-90k",
#         "skills": ["Communication"]
#     },
#     "data-analyst": {
#         "careerName": "Data Analyst",
#         "description": "Analyze data",
#         "salary": "70k-110k",
#         "skills": ["Excel", "SQL"]
#     }
# }


# @router.get("/{name}")
# def get_career(name: str):

#     try:

#         # ✅ IMPORTANT FIX (normalize input)
#         search_name = (
#             name.strip().lower().replace(" ", "-")
#         )

#         if search_name in careers:

#             career_data = careers[search_name]

#             result = career_collection.insert_one({
#                 "careerName": career_data["careerName"],
#                 "description": career_data["description"],
#                 "salary": career_data["salary"],
#                 "skills": career_data["skills"]
#             })

#             return {
#                 "success": True,
#                 "id": str(result.inserted_id),
#                 **career_data
#             }

#         return {
#             "success": False,
#             "message": "Career not found"
#         }

#     except Exception as e:
#         return {
#             "success": False,
#             "error": str(e)
#         }

# backend career assessment complete updated code

from fastapi import APIRouter
from pydantic import BaseModel
from typing import List

router = APIRouter()

# =========================================
# REQUEST MODEL
# =========================================

class AssessmentRequest(BaseModel):
    answers: List[int]

# =========================================
# CAREER DATABASE
# =========================================

careers = {
    "software-engineer": {
        "careerName": "Software Engineer",
        "description": "Build software systems",

        "salary": "70,000 USD to 120,000+ USD",

        "skills": [
            "Java",
            "Python",
            "SQL",
            "Problem Solving",
            "OOP"
        ],

        "educationPath": "Computer Science Degree or Bootcamp",

        "roadmap": [
            {
                "title": "1. Fundamentals",
                "desc": "Programming basics, DSA, OOP and core CS concepts."
            },

            {
                "title": "2. Projects & Practice",
                "desc": "Build real-world projects."
            },

            {
                "title": "3. Specialization & Growth",
                "desc": "Choose web, mobile or AI."
            }
        ]
    },

    "ui-ux-designer": {
        "careerName": "UI/UX Designer",
        "description": "Design user interfaces",

        "salary": "55,000 USD to 100,000+ USD",

        "skills": [
            "Figma",
            "Adobe XD",
            "Typography",
            "Creativity"
        ],

        "educationPath": "Graphic Design Degree",

        "roadmap": [
            {
                "title": "1. Design Basics",
                "desc": "Learn layouts and typography."
            },

            {
                "title": "2. Design Tools",
                "desc": "Master Figma and Adobe XD."
            }
        ]
    },

    "hr-manager": {
        "careerName": "HR Manager",
        "description": "Manage employees",

        "salary": "50,000 USD to 90,000+ USD",

        "skills": [
            "Communication",
            "Leadership",
            "Recruitment"
        ],

        "educationPath": "HR Degree or MBA",

        "roadmap": [
            {
                "title": "1. Communication Skills",
                "desc": "Improve leadership skills."
            },

            {
                "title": "2. HR Basics",
                "desc": "Learn hiring and onboarding."
            }
        ]
    },

    "data-analyst": {
        "careerName": "Data Analyst",
        "description": "Analyze business data",

        "salary": "60,000 USD to 110,000+ USD",

        "skills": [
            "Excel",
            "SQL",
            "Python",
            "Power BI"
        ],

        "educationPath": "Statistics or CS Degree",

        "roadmap": [
            {
                "title": "1. Data Foundations",
                "desc": "Learn Excel and SQL."
            },

            {
                "title": "2. Visualization",
                "desc": "Master Power BI."
            }
        ]
    }
}

# =========================================
# API
# =========================================

@router.post("/career-assessment")
def calculate_career(data: AssessmentRequest):

    scores = {
        "software-engineer": 0,
        "ui-ux-designer": 0,
        "hr-manager": 0,
        "data-analyst": 0
    }

    # =====================================
    # SCORING LOGIC
    # =====================================

    for ans in data.answers:

        if ans == 0:
            scores["software-engineer"] += 2

        elif ans == 1:
            scores["ui-ux-designer"] += 2

        elif ans == 2:
            scores["hr-manager"] += 2

        elif ans == 3:
            scores["data-analyst"] += 2

    # =====================================
    # BEST CAREER
    # =====================================

    best_career_key = max(scores, key=scores.get)

    career = careers[best_career_key]

    total_score = scores[best_career_key]

    match_percent = min(95, 60 + total_score)

    # =====================================
    # RESPONSE
    # =====================================

    return {
        "careerName": career["careerName"],

        "matchPercent": match_percent,

        "explanation":
            f"Based on your answers, "
            f"{career['careerName']} is best for you.",

        "description": career["description"],

        "skills": career["skills"],

        "salary": career["salary"],

        "educationPath": career["educationPath"],

        "roadmap": career["roadmap"]
    }


