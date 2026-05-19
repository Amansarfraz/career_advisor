
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

careers = {
    "software engineer": {
        "description": "Build software systems",
        "salary": "80k-120k",
        "skills": ["Coding", "Problem Solving"]
    },

    "ui/ux designer": {
        "description": "Design user interfaces",
        "salary": "60k-100k",
        "skills": ["Creativity", "Design"]
    },

    "hr manager": {
        "description": "Manage employees",
        "salary": "50k-90k",
        "skills": ["Communication"]
    },

    "data analyst": {
        "description": "Analyze data",
        "salary": "70k-110k",
        "skills": ["Excel", "SQL"]
    }
}


@router.get("/{name}")
def get_career(name: str):

    search_name = name.strip().lower()

    if search_name in careers:

        career_data = {
            "careerName": search_name.title(),
            **careers[search_name]
        }

        # SAVE IN DATABASE
        result = career_collection.insert_one(career_data)

        return {
            "success": True,
            "id": str(result.inserted_id),
            **career_data
        }

    return {
        "success": False,
        "message": "Career not found"

    }
