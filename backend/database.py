from pymongo import MongoClient

# connect to MongoDB
client = MongoClient("mongodb://localhost:27017")  # use your actual URI
db = client["career_advisor_db"]

# collections
user_collection = db["users"]
career_collection = db["careers"]
assessment_collection = db["assessments"]  # <-- THIS MUST EXIST