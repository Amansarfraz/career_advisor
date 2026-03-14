# utils/db.py

from pymongo import MongoClient
from config import Config

client = MongoClient(Config.MONGO_URI)
db = client[Config.DB_NAME]

career_collection = db["careers"]
users_collection = db["users"]
settings_collection = db["settings"]

# Generic function to get any collection
def get_collection(name: str):
    return db[name]