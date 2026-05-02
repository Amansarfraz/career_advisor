
# from fastapi import FastAPI
# from fastapi.middleware.cors import CORSMiddleware

# # Routers
# from backend.routes.auth_routes import router as auth_router
# from backend.routes.assessment_routes import router as assessment_router
# from backend.routes.career_routes import router as career_router

# # Initialize FastAPI
# app = FastAPI(
#     title="Career Advisor API",
#     description="Backend API for Career Advisor App",
#     version="1.0.0",
# )

# # CORS (allow frontend requests)
# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["*"],  # Frontend URL or '*' for all
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# # Include routers
# app.include_router(auth_router, prefix="/auth", tags=["Auth"])
# app.include_router(assessment_router, prefix="/assessment", tags=["Assessment"])
# app.include_router(career_router, prefix="/career", tags=["Career"])

# # Root endpoint
# @app.get("/")
# def root():
#     return {"message": "Career Advisor API is running!"}
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
    return {"message": "API Running"}