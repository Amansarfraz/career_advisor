# config.py

import os

class Config:
    # MongoDB Atlas URI (replace <username>, <password>, <dbname>)
    MONGO_URI = os.environ.get("MONGO_URI") or "mongodb+srv://<username>:<password>@cluster0.mongodb.net/<dbname>?retryWrites=true&w=majority"

    # Flask secret key (for sessions, optional)
    SECRET_KEY = os.environ.get("SECRET_KEY") or "supersecretkey"