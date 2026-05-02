
# from fastapi import APIRouter
# from backend.database import user_collection
# from backend.schemas.auth_schema import LoginRequest

# router = APIRouter()

# @router.post("/login")
# def login_user(data: LoginRequest):

#     email = data.email.strip()
#     password = data.password.strip()

#     user = user_collection.find_one({"email": email})

#     if not user:
#         return {"success": False, "message": "Invalid credentials"}

#     if str(user["password"]).strip() != password:
#         return {"success": False, "message": "Invalid credentials"}

#     return {
#         "success": True,
#         "user_id": str(user["_id"])
#     }


# @router.post("/logout")
# def logout_user():
#     return {"success": True, "message": "Logged out"}
from fastapi import APIRouter
from backend.database import user_collection
from backend.schemas.auth_schema import LoginRequest

router = APIRouter()

@router.post("/login")
def login_user(data: LoginRequest):

    email = data.email.strip()
    password = data.password.strip()

    user = user_collection.find_one({"email": email})

    if not user:
        return {"success": False, "message": "Invalid credentials"}

    if str(user["password"]).strip() != password:
        return {"success": False, "message": "Invalid credentials"}

    return {
        "success": True,
        "user_id": str(user["_id"])
    }


@router.post("/logout")
def logout_user():
    return {"success": True, "message": "Logged out"}