# routes/career_routes.py

from fastapi import APIRouter
from utils.db import career_collection

router = APIRouter()

@router.get("/", summary="Get all careers", description="Returns a list of all careers")
async def get_careers():
    careers = list(career_collection.find({}, {"_id": 0}))  # hide Mongo _id
    return careers

@router.get("/{career_id}", summary="Get career detail", description="Get a career by ID")
async def get_career_detail(career_id: str):
    career = career_collection.find_one({"id": career_id}, {"_id": 0})
    if career:
        return career
    return {"error": "Career not found"}