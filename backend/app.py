from flask import Flask, jsonify
from flask_cors import CORS
from flasgger import Swagger
from config import Config
from utils.db import db, career_collection, users_collection, get_db, get_collection
from routes.career_routes import career_bp
from routes.auth_routes import auth_bp
from routes.settings_routes import settings_bp

app = Flask(__name__)
app.config.from_object(Config)

# Enable CORS
CORS(app)

# Enable Swagger UI
swagger = Swagger(app)

# Register Blueprints
app.register_blueprint(career_bp, url_prefix="/api/careers")
app.register_blueprint(auth_bp, url_prefix="/api/auth")
app.register_blueprint(settings_bp, url_prefix="/api/settings")

# Simple test route
@app.route("/")
def index():
    return jsonify({"message": "Career Advisor Backend is running!"})

# Run the Flask app
if __name__ == "__main__":
    app.run(debug=True, port=5000)