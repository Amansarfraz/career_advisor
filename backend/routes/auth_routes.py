# routes/auth_routes.py

from fastapi import APIRouter

router = APIRouter()

@router.post("/login", summary="User login", description="Authenticate user")
async def login(username: str, password: str):
    # Placeholder example
    if username == "admin" and password == "1234":
        return {"message": "Login successful", "token": "fake-jwt-token"}
    return {"error": "Invalid credentials"}

@router.post("/register", summary="User register", description="Register new user")
async def register(username: str, password: str):
    # Placeholder: just return success
    return {"message": f"User {username} registered successfully"}