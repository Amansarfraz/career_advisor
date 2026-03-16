from pymongo import MongoClient
from config import MONGO_URL, DATABASE_NAME

client = MongoClient(MONGO_URL)

db = client["career_advisor_db"]

users_collection = db["users"]
assessment_collection = db["assessments"]