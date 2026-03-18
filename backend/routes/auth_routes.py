# from fastapi import APIRouter
# #from database import users_collection
# #from schemas.auth_schema import LoginRequest
# from backend.database import users_collection
# from backend.schemas.auth_schema import UserLogin

# router = APIRouter()

# @router.post("/login")
# def login_user(data: LoginRequest):

#     user = users_collection.find_one({
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
from backend.schemas.auth_schema import UserLogin

router = APIRouter()

@router.post("/login")
def login_user(data: UserLogin):
    user = user_collection.find_one({
        "email": data.email,
        "password": data.password
    })

    if not user:
        return {"message": "Invalid email or password"}

    return {
        "message": "Login successful",
        "user_id": str(user["_id"])
    }

@router.post("/logout")
def logout_user():
    return {"message": "User logged out successfully"}