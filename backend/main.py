
# from fastapi import FastAPI
# from fastapi.middleware.cors import CORSMiddleware

# from backend.routes.auth_routes import router as auth_router
# from backend.routes.assessment_routes import router as assessment_router
# from backend.routes.career_routes import router as career_router

# app = FastAPI(
#     title="Career Advisor API",
#     version="1.0.0"
# )

# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["*"],
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# app.include_router(auth_router, prefix="/auth", tags=["Auth"])
# app.include_router(assessment_router, prefix="/assessment", tags=["Assessment"])
# app.include_router(career_router, prefix="/career", tags=["Career"])

# @app.get("/")
# def home():
#     return {"message": "Career Advisor API Running"}
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from backend.routes.auth_routes import router as auth_router
from backend.routes.assessment_routes import router as assessment_router
from backend.routes.career_routes import router as career_router

app = FastAPI(
    title="Career Advisor API",
    version="1.0.0"
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(auth_router, prefix="/auth", tags=["Auth"])
app.include_router(assessment_router, prefix="/assessment", tags=["Assessment"])
app.include_router(career_router, prefix="/career", tags=["Career"])

@app.get("/")
def home():
    return {"success": True, "message": "API Running"}