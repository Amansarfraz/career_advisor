import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // -----------------------------
  // Base URL for your backend
  // -----------------------------
  static const String baseUrl = "http://127.0.0.1:8000";
  // For Android emulator: http://10.0.2.2:8000

  // -----------------------------
  // 🔹 Login
  // -----------------------------
  Future<bool> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "password": password}),
      );

      if (response.statusCode == 200) {
        // Assuming backend returns { "success": true } for valid login
        final data = jsonDecode(response.body);
        return data['success'] ?? false;
      } else {
        return false;
      }
    } catch (e) {
      print("Login error: $e");
      return false;
    }
  }

  // -----------------------------
  // 🔹 Submit Career Assessment
  // -----------------------------
  Future<Map<String, dynamic>> submitAssessment(List<int?> answers) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/career-assessment"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"answers": answers}),
      );

      if (response.statusCode == 200) {
        // Backend returns:
        // { "matchPercent": 85, "careerName": "Software Engineer", "explanation": "..." }
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to submit assessment: ${response.statusCode}");
      }
    } catch (e) {
      print("API Error: $e");
      // Fallback dummy response if backend is not available
      return {
        "matchPercent": 85,
        "careerName": "Software Engineer",
        "explanation": "You enjoy problem solving and working with technology.",
      };
    }
  }

  // -----------------------------
  // 🔹 Get Career Details
  // -----------------------------
  Future<Map<String, dynamic>> getCareerDetails(String name) async {
    try {
      final response = await http.get(
        Uri.parse("$baseUrl/careers/$name"),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to get career details: ${response.statusCode}");
      }
    } catch (e) {
      print("API Error: $e");
      // Fallback dummy career details
      return {
        "careerName": name,
        "description": "This is a sample career description for $name.",
        "averageSalary": "\$80,000",
        "requiredSkills": ["Problem Solving", "Coding", "Teamwork"],
      };
    }
  }

  // -----------------------------
  // 🔹 Optional: Fetch all careers (if you want a career list)
  // -----------------------------
  Future<List<Map<String, dynamic>>> getAllCareers() async {
    try {
      final response = await http.get(
        Uri.parse("$baseUrl/careers"),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        return [];
      }
    } catch (e) {
      print("API Error: $e");
      return [];
    }
  }
}
