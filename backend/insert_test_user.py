from passlib.context import CryptContext
from pymongo import MongoClient
from datetime import datetime

# Password hashing
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

# MongoDB connection
client = MongoClient("mongodb://localhost:27017")
db = client["career_advisor_db"]

# Hash password
hashed_password = pwd_context.hash("123456")

# Insert test user
db.users.insert_one({
    "email": "testuser@example.com",
    "password": hashed_password,
    "name": "Aman Sarfraz",
    "created_at": datetime.utcnow()
})

print("Test user inserted successfully!")