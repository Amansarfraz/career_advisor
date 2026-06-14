
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
    "shortExplanation": "Build software systems and applications. Develop applications, solve technical problems, and create efficient software solutions.",
    "requiredSkills": "Java, Python, SQL, Problem Solving, OOP",
    "educationPath": "Computer Science Degree or Bootcamp",
    "salaryRange": "70,000 USD to 120,000+ USD",
    "roadmap": [
        {
            "title": "1. Fundamentals",
            "desc": "Learn programming basics, data structures and algorithms, object-oriented programming, databases, and core computer science concepts to build a strong technical foundation."
        },
        {
            "title": "2. Projects & Practice",
            "desc": "Build real-world projects, solve coding challenges, and practice problem-solving to strengthen your development skills and gain practical experience."
        },
        {
            "title": "3. Advanced Development",
            "desc": "Learn software architecture, version control with Git, testing, APIs, and modern development frameworks to create scalable and maintainable applications."
        }
    ]
},

   "ui-ux-designer": {
    "careerName": "UI/UX Designer",
    "shortExplanation": "Design user-friendly interfaces and experiences. Create engaging digital products that are visually appealing, intuitive, and easy to use.",
    "requiredSkills": "Figma, Adobe XD, Typography, Creativity",
    "educationPath": "Graphic Design Degree",
    "salaryRange": "55,000 USD to 100,000+ USD",
    "roadmap": [
        {
            "title": "1. Design Basics",
            "desc": "Learn the fundamentals of design, including layouts, typography, color theory, visual hierarchy, and user-centered design principles."
        },
        {
            "title": "2. Design Tools",
            "desc": "Master industry-standard tools such as Figma and Adobe XD to create wireframes, prototypes, and high-fidelity user interface designs."
        },
        {
            "title": "3. User Research & Prototyping",
            "desc": "Understand user needs through research, create user journeys, build interactive prototypes, and test designs to improve the overall user experience."
        }
    ]
},

    "hr-manager": {
    "careerName": "HR Manager",
    "shortExplanation": "Manage employees, workplace operations, recruitment, employee relations, and organizational development.",
    "requiredSkills": "Communication, Leadership, Recruitment",
    "educationPath": "HR Degree or MBA",
    "salaryRange": "50,000 USD to 90,000+ USD",
    "roadmap": [
        {
            "title": "1. Communication Skills",
            "desc": "Develop strong communication and interpersonal skills to effectively interact with employees, resolve conflicts, and build positive workplace relationships."
        },
        {
            "title": "2. HR Basics",
            "desc": "Learn the fundamentals of recruitment, hiring, onboarding, employee records management, and workplace policies."
        },
        {
            "title": "3. Leadership & Employee Management",
            "desc": "Build leadership abilities to manage teams, support employee growth, improve workplace culture, and handle performance management."
        }
    ]
},

    "data-analyst": {
        "careerName": "Data Analyst",
        "shortExplanation": "Analyze business data for insights.Transform raw data into meaningful insights to support decision-making.",
        "requiredSkills": "Excel, SQL, Python, Power BI",
        "educationPath": "Statistics or CS Degree",
        "salaryRange": "60,000 USD to 110,000+ USD",
        "roadmap": [
    {
        "title": "1. Data Foundations",
        "desc": "Learn Excel and SQL to organize, clean, and manage data efficiently. Understand databases, data structures, and basic data manipulation techniques used in real-world business environments."
    },
    {
        "title": "2. Visualization",
        "desc": "Master Power BI to create interactive dashboards and reports. Learn how to present complex data in a clear and visual format that helps stakeholders make informed decisions."
    },
    {
        "title": "3. Data Analysis with Python",
        "desc": "Learn Python libraries such as Pandas, NumPy, and Matplotlib to analyze datasets, automate workflows, and extract meaningful insights from complex data."
    }
]
    }
}



@router.get("/career-details/{career_key}")
def get_career_details(career_key: str):

    if career_key not in careers:
        return {
            "success": False,
            "message": "Career not found"
        }

    career_doc = careers[career_key].copy()

    result = careers_details_collection.insert_one(
        career_doc
    )

    return {
        "success": True,
        "inserted_id": str(result.inserted_id),
        "career": career_doc
    }
# @router.get("/career-details/{career_key}")
# def get_career_details(career_key: str):

#     print("API HIT")
#     print("Career Key:", career_key)

#     if career_key not in careers:
#         return {
#             "success": False,
#             "message": "Career not found"
#         }

#     career_doc = careers[career_key].copy()

#     result = careers_details_collection.insert_one(career_doc)

#     print("Inserted:", result.inserted_id)

#     return {
#         "success": True,
#         "inserted_id": str(result.inserted_id),
#         "career": career_doc
#     }