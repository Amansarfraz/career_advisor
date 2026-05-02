
# from pymongo import MongoClient

# # Connect to MongoDB
# client = MongoClient("mongodb://localhost:27017")  # Replace with your actual URI
# db = client["career_advisor_db"]

# # Collections
# user_collection = db["users"]
# career_collection = db["careers"]
# assessment_collection = db["assessments"]
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017")
db = client["career_advisor_db"]

user_collection = db["users"]
career_collection = db["careers"]
assessment_collection = db["assessments"]