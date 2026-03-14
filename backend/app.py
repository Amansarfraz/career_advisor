from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from routes.career_routes import router as career_router
from routes.auth_routes import router as auth_router
from routes.settings_routes import router as settings_router

app = FastAPI(title="Career Advisor API", version="1.0.0")

# Enable CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Register routers
app.include_router(career_router, prefix="/api/careers", tags=["Careers"])
app.include_router(auth_router, prefix="/api/auth", tags=["Auth"])
app.include_router(settings_router, prefix="/api/settings", tags=["Settings"])

# Root route
@app.get("/")
async def root():
    return {"message": "Career Advisor Backend is running!"}