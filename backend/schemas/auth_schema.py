from pydantic import BaseModel
#from schemas.auth_schema import LoginRequest, LoginResponse

class LoginRequest(BaseModel):
    email: str
    password: str


class LoginResponse(BaseModel):
    message: str
    user_id: str