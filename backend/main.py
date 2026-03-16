from fastapi import FastAPI
import sys
import os

sys.path.append(os.path.dirname(__file__))

from routes.auth_routes import router as auth_router
from routes.assessment_routes import router as assessment_router
from routes.career_routes import router as career_router

app = FastAPI()

app.include_router(auth_router)
app.include_router(assessment_router)
app.include_router(career_router)

@app.get("/")
def home():
    return {"message": "Career Advisor API Running"}