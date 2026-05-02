# from pydantic import BaseModel
# #from schemas.auth_schema import LoginRequest, LoginResponse
# #from backend.schemas.auth_schema import LoginRequest, LoginResponse

# class LoginRequest(BaseModel):
#     email: str
#     password: str


# class LoginResponse(BaseModel):
#     message: str
#     user_id: str
from pydantic import BaseModel

class LoginRequest(BaseModel):
    email: str
    password: str