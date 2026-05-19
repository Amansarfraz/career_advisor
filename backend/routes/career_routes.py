
# # from fastapi import APIRouter

# # router = APIRouter()

# # careers = {
# #     "software engineer": {
# #         "description": "Build software systems",
# #         "salary": "80k-120k",
# #         "skills": ["Coding", "Problem Solving"]
# #     },
# #     "ui/ux designer": {
# #         "description": "Design user interfaces",
# #         "salary": "60k-100k",
# #         "skills": ["Creativity", "Design"]
# #     },
# #     "hr manager": {
# #         "description": "Manage employees",
# #         "salary": "50k-90k",
# #         "skills": ["Communication"]
# #     },
# #     "data analyst": {
# #         "description": "Analyze data",
# #         "salary": "70k-110k",
# #         "skills": ["Excel", "SQL"]
# #     }
# # }

# # @router.get("/{name}")
# # def get_career(name: str):

# #     search_name = name.strip().lower()

# #     if search_name in careers:
# #         return {
# #             "success": True,
# #             "careerName": name,
# #             **careers[search_name]
# #         }

# #     return {
# #         "success": False,
# #         "message": "Career not found"
# #     }



# from fastapi import APIRouter
# from backend.database import career_collection

# router = APIRouter()

# careers = {

#     "software-engineer": {
#         "careerName": "Software Engineer",
#         "description": "Build software systems",
#         "salary": "80k-120k",
#         "skills": [
#             "Coding",
#             "Problem Solving"
#         ]
#     },

#     "ui-ux-designer": {
#         "careerName": "UI/UX Designer",
#         "description": "Design user interfaces",
#         "salary": "60k-100k",
#         "skills": [
#             "Creativity",
#             "Design"
#         ]
#     },

#     "hr-manager": {
#         "careerName": "HR Manager",
#         "description": "Manage employees",
#         "salary": "50k-90k",
#         "skills": [
#             "Communication"
#         ]
#     },

#     "data-analyst": {
#         "careerName": "Data Analyst",
#         "description": "Analyze data",
#         "salary": "70k-110k",
#         "skills": [
#             "Excel",
#             "SQL"
#         ]
#     }
# }


# @router.get("/{name}")
# def get_career(name: str):

#     try:

#         search_name = name.strip().lower()

#         if search_name in careers:

#             career_data = careers[search_name]

#             # SAVE TO DATABASE
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



from fastapi import APIRouter
from backend.database import career_collection

router = APIRouter()

careers = {
    "software-engineer": {
        "careerName": "Software Engineer",
        "description": "Build software systems",
        "salary": "80k-120k",
        "skills": ["Coding", "Problem Solving"]
    },
    "ui-ux-designer": {
        "careerName": "UI/UX Designer",
        "description": "Design user interfaces",
        "salary": "60k-100k",
        "skills": ["Creativity", "Design"]
    },
    "hr-manager": {
        "careerName": "HR Manager",
        "description": "Manage employees",
        "salary": "50k-90k",
        "skills": ["Communication"]
    },
    "data-analyst": {
        "careerName": "Data Analyst",
        "description": "Analyze data",
        "salary": "70k-110k",
        "skills": ["Excel", "SQL"]
    }
}


@router.get("/{name}")
def get_career(name: str):

    try:

        # ✅ IMPORTANT FIX (normalize input)
        search_name = (
            name.strip().lower().replace(" ", "-")
        )

        if search_name in careers:

            career_data = careers[search_name]

            result = career_collection.insert_one({
                "careerName": career_data["careerName"],
                "description": career_data["description"],
                "salary": career_data["salary"],
                "skills": career_data["skills"]
            })

            return {
                "success": True,
                "id": str(result.inserted_id),
                **career_data
            }

        return {
            "success": False,
            "message": "Career not found"
        }

    except Exception as e:
        return {
            "success": False,
            "error": str(e)
        }

