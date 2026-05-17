
# from fastapi import APIRouter
# from backend.database import user_collection
# from backend.schemas.auth_schema import LoginRequest

# router = APIRouter()

# @router.post("/login")
# def login_user(data: LoginRequest):

#     email = data.email.strip().lower()
#     password = str(data.password).strip()

#     user = user_collection.find_one({"email": email})

#     if not user:
#         return {"success": False, "message": "Invalid credentials"}

#     db_password = str(user.get("password", "")).strip()

#     if db_password != password:
#         return {"success": False, "message": "Invalid credentials"}

#     return {
#         "success": True,
#         "user_id": str(user["_id"])
#     }

from fastapi import APIRouter
from backend.database import user_collection
from backend.schemas.auth_schema import LoginRequest

router = APIRouter()


@router.post("/login")
def login_user(data: LoginRequest):

    email = data.email.strip().lower()
    password = str(data.password).strip()

    # check existing user
    user = user_collection.find_one({"email": email})

    # if user exists
    if user:

        db_password = str(user.get("password", "")).strip()

        # wrong password
        if db_password != password:
            return {
                "success": False,
                "message": "Invalid credentials"
            }

        # login success
        return {
            "success": True,
            "message": "Login successful",
            "user_id": str(user["_id"])
        }

    # if user does not exist → create new user
    new_user = {
        "email": email,
        "password": password
    }

    inserted_user = user_collection.insert_one(new_user)

    return {
        "success": True,
        "message": "New user created and logged in",
        "user_id": str(inserted_user.inserted_id)
    }
