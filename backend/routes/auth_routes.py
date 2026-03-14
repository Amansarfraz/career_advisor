# backend/routes/auth_routes.py

from flask import Blueprint, request, jsonify

auth_bp = Blueprint("auth_bp", __name__, url_prefix="/api/auth")

# Dummy in-memory users (replace with DB in real app)
users = {
    "admin@example.com": {"password": "admin123", "name": "Admin"}
}


@auth_bp.route("/login", methods=["POST"])
def login():
    data = request.json
    email = data.get("email")
    password = data.get("password")

    user = users.get(email)
    if user and user["password"] == password:
        # In real app, generate JWT token
        return jsonify({"message": "Login successful", "user": {"email": email, "name": user["name"]}}), 200
    return jsonify({"error": "Invalid credentials"}), 401


@auth_bp.route("/logout", methods=["POST"])
def logout():
    # In real app, handle token invalidation
    return jsonify({"message": "Logged out successfully"}), 200