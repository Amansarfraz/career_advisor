
# from fastapi import APIRouter

# router = APIRouter()

# careers = {
#     "Software Engineer": {
#         "description": "Build software systems",
#         "salary": "80k-120k",
#         "skills": ["Coding", "Problem Solving"]
#     },
#     "UI/UX Designer": {
#         "description": "Design user interfaces",
#         "salary": "60k-100k",
#         "skills": ["Creativity", "Design"]
#     },
#     "HR Manager": {
#         "description": "Manage employees",
#         "salary": "50k-90k",
#         "skills": ["Communication"]
#     },
#     "Data Analyst": {
#         "description": "Analyze data",
#         "salary": "70k-110k",
#         "skills": ["Excel", "SQL"]
#     }
# }

# @router.get("/{name}")
# def get_career(name: str):

#     if name not in careers:
#         return {"success": False, "message": "Career not found"}

#     return {
#         "success": True,
#         "careerName": name,
#         **careers[name]
#     }
from fastapi import APIRouter

router = APIRouter()

careers = {
    "Software Engineer": {
        "description": "Build software systems",
        "salary": "80k-120k",
        "skills": ["Coding", "Problem Solving"]
    },
    "UI/UX Designer": {
        "description": "Design user interfaces",
        "salary": "60k-100k",
        "skills": ["Creativity", "Design"]
    },
    "HR Manager": {
        "description": "Manage employees",
        "salary": "50k-90k",
        "skills": ["Communication"]
    },
    "Data Analyst": {
        "description": "Analyze data",
        "salary": "70k-110k",
        "skills": ["Excel", "SQL"]
    }
}

@router.get("/{name}")
def get_career(name: str):

    search_name = name.strip().lower()

    for key, value in careers.items():
        if key.lower() == search_name:
            return {
                "success": True,
                "careerName": key,
                **value
            }

    return {
        "success": False,
        "message": "Career not found"
    }