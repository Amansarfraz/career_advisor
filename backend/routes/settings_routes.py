# routes/settings_routes.py

from fastapi import APIRouter

router = APIRouter()

@router.get("/", summary="Get app settings", description="Returns application settings")
async def get_settings():
    return {"theme": "light", "notifications": True}

@router.post("/", summary="Update app settings", description="Update application settings")
async def update_settings(theme: str = "light", notifications: bool = True):
    return {"theme": theme, "notifications": notifications, "message": "Settings updated"}