# backend/utils/db.py

from pymongo import MongoClient

# Replace with your actual MongoDB URI (Atlas or local)
MONGO_URI = "mongodb://localhost:27017/"

# Create MongoDB client
client = MongoClient(MONGO_URI)

# Database object
db = client["career_advisor_db"]

# Collections
career_collection = db["careers"]
users_collection = db["users"]

# Helper function to get the database
def get_db():
    return db

# Helper function to get any collection by name
def get_collection(name):
    return db[name]