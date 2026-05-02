# from fastapi import APIRouter
# from backend.database import user_collection
# from backend.schemas.auth_schema import LoginRequest

# router = APIRouter()

# @router.post("/login")
# def login_user(data: LoginRequest):
#     user = user_collection.find_one({
#         "email": data.email,
#         "password": data.password
#     })

#     if not user:
#         return {"message": "Invalid email or password"}

#     return {
#         "message": "Login successful",
#         "user_id": str(user["_id"])
#     }

# @router.post("/logout")
# def logout_user():
#     return {"message": "User logged out successfully"}
from fastapi import APIRouter
from backend.database import user_collection
from backend.schemas.auth_schema import LoginRequest

router = APIRouter()

@router.post("/login")
def login_user(data: LoginRequest):

    user = user_collection.find_one({
        "email": data.email.strip(),
        "password": data.password.strip()
    })

    if not user:
        return {"success": False, "message": "Invalid credentials"}

    return {
        "success": True,
        "user_id": str(user["_id"])
    }


@router.post("/logout")
def logout_user():
    return {"success": True, "message": "Logged out"}