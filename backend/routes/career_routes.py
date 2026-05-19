
# from fastapi import APIRouter

# router = APIRouter()

# careers = {
#     "software engineer": {
#         "description": "Build software systems",
#         "salary": "80k-120k",
#         "skills": ["Coding", "Problem Solving"]
#     },
#     "ui/ux designer": {
#         "description": "Design user interfaces",
#         "salary": "60k-100k",
#         "skills": ["Creativity", "Design"]
#     },
#     "hr manager": {
#         "description": "Manage employees",
#         "salary": "50k-90k",
#         "skills": ["Communication"]
#     },
#     "data analyst": {
#         "description": "Analyze data",
#         "salary": "70k-110k",
#         "skills": ["Excel", "SQL"]
#     }
# }

# @router.get("/{name}")
# def get_career(name: str):

#     search_name = name.strip().lower()

#     if search_name in careers:
#         return {
#             "success": True,
#             "careerName": name,
#             **careers[search_name]
#         }

#     return {
#         "success": False,
#         "message": "Career not found"
#     }


from fastapi import APIRouter
from backend.database import career_collection

router = APIRouter()

# CAREERS DATA
careers = {

    "software-engineer": {
        "careerName": "Software Engineer",
        "description": "Build software systems",
        "salary": "80k-120k",
        "skills": [
            "Coding",
            "Problem Solving",
            "Python",
            "Debugging"
        ]
    },

    "ui-ux-designer": {
        "careerName": "UI/UX Designer",
        "description": "Design user interfaces and improve user experience",
        "salary": "60k-100k",
        "skills": [
            "Creativity",
            "Figma",
            "UI Design",
            "UX Research"
        ]
    },

    "hr-manager": {
        "careerName": "HR Manager",
        "description": "Manage employees and company hiring process",
        "salary": "50k-90k",
        "skills": [
            "Communication",
            "Leadership",
            "Management"
        ]
    },

    "data-analyst": {
        "careerName": "Data Analyst",
        "description": "Analyze company data and generate reports",
        "salary": "70k-110k",
        "skills": [
            "Excel",
            "SQL",
            "Analytics",
            "Power BI"
        ]
    }
}


# GET CAREER DETAILS
@router.get("/{name}")
def get_career(name: str):

    # CLEAN INPUT
    search_name = name.strip().lower()

    # CHECK CAREER EXISTS
    if search_name in careers:

        career_data = careers[search_name]

        # SAVE IN DATABASE
        result = career_collection.insert_one(career_data)

        # RESPONSE
        return {
            "success": True,
            "id": str(result.inserted_id),
            **career_data
        }

    # NOT FOUND
    return {
        "success": False,
        "message": "Career not found"
    }

