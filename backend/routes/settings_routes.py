# backend/routes/settings_routes.py

from flask import Blueprint, jsonify, request

settings_bp = Blueprint("settings_bp", __name__, url_prefix="/api/settings")

# Dummy settings storage (replace with DB)
app_settings = {
    "theme": "light",
    "notifications": True
}


@settings_bp.route("/", methods=["GET"])
def get_settings():
    """Get current app settings"""
    return jsonify(app_settings), 200


@settings_bp.route("/", methods=["PUT"])
def update_settings():
    """Update app settings"""
    data = request.json
    app_settings.update(data)
    return jsonify({"message": "Settings updated", "settings": app_settings}), 200