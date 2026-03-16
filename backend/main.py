# from fastapi import FastAPI
# import sys
# import os

# sys.path.append(os.path.dirname(__file__))

# from routes.auth_routes import router as auth_router
# from routes.assessment_routes import router as assessment_router
# from routes.career_routes import router as career_router
# from fastapi.middleware.cors import CORSMiddleware

# app = FastAPI()

# # CORS setup
# origins = ["*"]
# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=origins,
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# # Include routers
# app.include_router(auth_router)
# app.include_router(assessment_router)
# app.include_router(career_router)

# @app.get("/")
# def home():
#     return {"message": "Career Advisor API Running"}
# backend/main.py
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

# Routers
from routes.auth_routes import router as auth_router
from routes.assessment_routes import router as assessment_router

# Initialize FastAPI app
app = FastAPI(
    title="Career Advisor API",
    description="Backend API for Career Advisor App",
    version="1.0.0",
)

# CORS (allow frontend requests)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # frontend URL ya '*' for all
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Include routers
app.include_router(auth_router, prefix="/auth", tags=["Auth"])
app.include_router(assessment_router, prefix="/assessment", tags=["Assessment"])

# Root endpoint
@app.get("/")
def root():
    return {"message": "Career Advisor API is running!"}