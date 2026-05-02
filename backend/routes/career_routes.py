
# from fastapi import APIRouter

# router = APIRouter()

# career_database = {
#     "Software Engineer": {
#         "requiredSkills": "Java, Python, SQL, Data Structures",
#         "educationPath": "Computer Science Degree",
#         "salaryRange": "$70k - $120k"
#     },
#     "UI/UX Designer": {
#         "requiredSkills": "Figma, Adobe XD, Prototyping",
#         "educationPath": "Graphic Design Degree",
#         "salaryRange": "$55k - $100k"
#     },
#     "HR Manager / Counselor": {
#         "requiredSkills": "Communication, Leadership",
#         "educationPath": "HR Degree or MBA",
#         "salaryRange": "$50k - $90k"
#     },
#     "Data / Business Analyst": {
#         "requiredSkills": "Excel, SQL, Python, Power BI",
#         "educationPath": "Statistics or CS Degree",
#         "salaryRange": "$60k - $110k"
#     }
# }

# @router.get("/{career_name}")
# def get_career_details(career_name: str):
#     if career_name not in career_database:
#         return {"message": "Career not found"}
#     return career_database[career_name]
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

    if name not in careers:
        return {"success": False, "message": "Career not found"}

    return {
        "success": True,
        "careerName": name,
        **careers[name]
    }