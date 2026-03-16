# from pymongo import MongoClient
# from config import MONGO_URL, DATABASE_NAME

# client = MongoClient(MONGO_URL)

# db = client("mongodb://localhost:27017")["career_advisor_db"]

# users_collection = db["users"]
# assessment_collection = db["assessments"]
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017")  # ✅ correct
db = client["career_advisor_db"]                   # ✅ correct
users_collection = db["users"]
assessment_collection = db["assessments"]