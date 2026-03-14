# backend/routes/career_routes.py

from flask import Blueprint, request, jsonify
from models.career_model import Career

career_bp = Blueprint("career_bp", __name__, url_prefix="/api/careers")


@career_bp.route("/", methods=["GET"])
def get_careers():
    """Get all careers"""
    careers = Career.get_all()
    return jsonify(careers), 200


@career_bp.route("/<career_id>", methods=["GET"])
def get_career(career_id):
    """Get career by ID"""
    career = Career.get_by_id(career_id)
    if career:
        return jsonify(career), 200
    return jsonify({"error": "Career not found"}), 404


@career_bp.route("/", methods=["POST"])
def add_career():
    """Add a new career"""
    data = request.json
    career_id = Career.create(data)
    return jsonify({"message": "Career added", "id": career_id}), 201


@career_bp.route("/<career_id>", methods=["PUT"])
def update_career(career_id):
    """Update career by ID"""
    data = request.json
    updated_count = Career.update(career_id, data)
    if updated_count:
        return jsonify({"message": "Career updated"}), 200
    return jsonify({"error": "Career not found"}), 404


@career_bp.route("/<career_id>", methods=["DELETE"])
def delete_career(career_id):
    """Delete career by ID"""
    deleted_count = Career.delete(career_id)
    if deleted_count:
        return jsonify({"message": "Career deleted"}), 200
    return jsonify({"error": "Career not found"}), 404