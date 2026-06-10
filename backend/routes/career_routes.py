
# from fastapi import APIRouter
# from backend.database import careers_details_collection

# router = APIRouter()

# careers = {
#     "software-engineer": {
#         "careerName": "Software Engineer",
#         "description": "Build software systems",
#         "salary": "70,000 USD to 120,000+ USD",
#         "skills": ["Java", "Python", "SQL", "Problem Solving", "OOP"],
#         "educationPath": "Computer Science Degree or Bootcamp",
#         "roadmap": [
#             {"title": "1. Fundamentals", "desc": "Programming basics, DSA, OOP and core CS concepts."},
#             {"title": "2. Projects & Practice", "desc": "Build real-world projects."}
#         ]
#     },

#     "ui-ux-designer": {
#         "careerName": "UI/UX Designer",
#         "description": "Design user interfaces",
#         "salary": "55,000 USD to 100,000+ USD",
#         "skills": ["Figma", "Adobe XD", "Typography", "Creativity"],
#         "educationPath": "Graphic Design Degree",
#         "roadmap": [
#             {"title": "1. Design Basics", "desc": "Learn layouts and typography."},
#             {"title": "2. Design Tools", "desc": "Master Figma and Adobe XD."}
#         ]
#     },

#     "hr-manager": {
#         "careerName": "HR Manager",
#         "description": "Manage employees",
#         "salary": "50,000 USD to 90,000+ USD",
#         "skills": ["Communication", "Leadership", "Recruitment"],
#         "educationPath": "HR Degree or MBA",
#         "roadmap": [
#             {"title": "1. Communication Skills", "desc": "Improve leadership skills."},
#             {"title": "2. HR Basics", "desc": "Learn hiring and onboarding."}
#         ]
#     },

#     "data-analyst": {
#         "careerName": "Data Analyst",
#         "description": "Analyze business data",
#         "salary": "60,000 USD to 110,000+ USD",
#         "skills": ["Excel", "SQL", "Python", "Power BI"],
#         "educationPath": "Statistics or CS Degree",
#         "roadmap": [
#             {"title": "1. Data Foundations", "desc": "Learn Excel and SQL."},
#             {"title": "2. Visualization", "desc": "Master Power BI."}
#         ]
#     }
# }




# @router.get("/career-details/{career_key}")
# def get_career_details(career_key: str):

#     try:
#         if career_key not in careers:
#             return {"error": "Career not found"}

#         career_doc = careers[career_key].copy()

#         result = careers_details_collection.insert_one(career_doc)

#         return {
#             "success": True,
#             "inserted_id": str(result.inserted_id),
#             "career": career_doc
#         }

#     except Exception as e:
#         return {"error": str(e)}

from fastapi import APIRouter
from backend.database import careers_details_collection

router = APIRouter()

careers = {
    "software-engineer": {
        "careerName": "Software Engineer",
        "shortExplanation": "Build software systems and applications.",
        "requiredSkills": "Java, Python, SQL, Problem Solving, OOP",
        "educationPath": "Computer Science Degree or Bootcamp",
        "salaryRange": "70,000 USD to 120,000+ USD",
        "roadmap": [
            {
                "title": "1. Fundamentals",
                "desc": "Programming basics, DSA, OOP and core CS concepts."
            },
            {
                "title": "2. Projects & Practice",
                "desc": "Build real-world projects."
            }
        ]
    },

    "ui-ux-designer": {
        "careerName": "UI/UX Designer",
        "shortExplanation": "Design user-friendly interfaces and experiences.",
        "requiredSkills": "Figma, Adobe XD, Typography, Creativity",
        "educationPath": "Graphic Design Degree",
        "salaryRange": "55,000 USD to 100,000+ USD",
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
        "shortExplanation": "Manage employees and workplace operations.",
        "requiredSkills": "Communication, Leadership, Recruitment",
        "educationPath": "HR Degree or MBA",
        "salaryRange": "50,000 USD to 90,000+ USD",
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
        "shortExplanation": "Analyze business data for insights.",
        "requiredSkills": "Excel, SQL, Python, Power BI",
        "educationPath": "Statistics or CS Degree",
        "salaryRange": "60,000 USD to 110,000+ USD",
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



# @router.get("/career-details/{career_key}")
# def get_career_details(career_key: str):

#     if career_key not in careers:
#         return {
#             "success": False,
#             "message": "Career not found"
#         }

#     career_doc = careers[career_key].copy()

#     result = careers_details_collection.insert_one(
#         career_doc
#     )

#     return {
#         "success": True,
#         "inserted_id": str(result.inserted_id),
#         "career": career_doc
#     }
@router.get("/career-details/{career_key}")
def get_career_details(career_key: str):

    print("API HIT")
    print("Career Key:", career_key)

    if career_key not in careers:
        return {
            "success": False,
            "message": "Career not found"
        }

    career_doc = careers[career_key].copy()

    result = careers_details_collection.insert_one(career_doc)

    print("Inserted:", result.inserted_id)

    return {
        "success": True,
        "inserted_id": str(result.inserted_id),
        "career": career_doc
    }