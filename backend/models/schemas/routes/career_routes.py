from fastapi import APIRouter

router = APIRouter()

career_database = {

"Software Engineer":{
"requiredSkills":"Java, Python, SQL, Data Structures",
"educationPath":"Computer Science Degree",
"salaryRange":"$70k - $120k"
},

"UI/UX Designer":{
"requiredSkills":"Figma, Adobe XD, Prototyping",
"educationPath":"Graphic Design Degree",
"salaryRange":"$55k - $100k"
},

"HR Manager / Counselor":{
"requiredSkills":"Communication, Leadership",
"educationPath":"HR Degree or MBA",
"salaryRange":"$50k - $90k"
},

"Data / Business Analyst":{
"requiredSkills":"Excel, SQL, Python, Power BI",
"educationPath":"Statistics or CS Degree",
"salaryRange":"$60k - $110k"
}

}

@router.get("/career/{career_name}")
def get_career_details(career_name: str):

    if career_name not in career_database:
        return {"message":"Career not found"}

    return career_database[career_name]