# backend/models/career_model.py

from pymongo import MongoClient
from bson.objectid import ObjectId
from utils.db import career_collection, users_collection

# MongoDB connection (update URI in config or here)
client = MongoClient("mongodb://localhost:27017/")
db = client["career_advisor_db"]  # Database name
career_collection = db["careers"]  # Collection name


class Career:
    def __init__(self, name, description, skills_required, salary_range):
        self.name = name
        self.description = description
        self.skills_required = skills_required  # List of strings
        self.salary_range = salary_range        # Example: "50k-70k"

    def to_dict(self):
        return {
            "name": self.name,
            "description": self.description,
            "skills_required": self.skills_required,
            "salary_range": self.salary_range
        }

    @staticmethod
    def create(career_data):
        """Insert a new career document"""
        result = career_collection.insert_one(career_data)
        return str(result.inserted_id)

    @staticmethod
    def get_all():
        """Fetch all careers"""
        careers = career_collection.find()
        return [Career(**c).to_dict() for c in careers]

    @staticmethod
    def get_by_id(career_id):
        """Fetch a single career by ObjectId"""
        career = career_collection.find_one({"_id": ObjectId(career_id)})
        if career:
            return Career(**career).to_dict()
        return None

    @staticmethod
    def update(career_id, update_data):
        """Update career document by ID"""
        result = career_collection.update_one(
            {"_id": ObjectId(career_id)},
            {"$set": update_data}
        )
        return result.modified_count

    @staticmethod
    def delete(career_id):
        """Delete a career document by ID"""
        result = career_collection.delete_one({"_id": ObjectId(career_id)})
        return result.deleted_count