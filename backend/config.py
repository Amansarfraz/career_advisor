# config.py

import os

class Config:
    MONGO_URI = os.getenv("MONGO_URI", "mongodb://localhost:27017/career_advisor_db")
    DB_NAME = os.getenv("DB_NAME", "career_advisor_db")