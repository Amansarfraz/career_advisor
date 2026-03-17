//mport 'dart:convert';
// import 'package:http/http.dart' as http;

class ApiService {
  // Base URL for your backend (not used yet, kept for future)
  static const String baseUrl = "http://127.0.0.1:8000";
  // For Android emulator, use: static const String baseUrl = "http://10.0.2.2:8000";

  // 🔹 Fake login method
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return true; // Accept everything for testing
  }

  // 🔹 Fake career assessment submission
  Future<Map<String, dynamic>> submitAssessment(List<int?> answers) async {
    await Future.delayed(const Duration(seconds: 1)); // simulate network delay

    // Return dummy career assessment result
    return {
      "matchPercent": 85,
      "careerName": "Software Engineer",
      "explanation": "You enjoy problem solving and working with technology.",
    };
  }

  // 🔹 Fake get career details
  Future<Map<String, dynamic>> getCareerDetails(String name) async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    ); // simulate network delay

    return {
      "careerName": name,
      "description": "This is a sample career description for $name.",
      "averageSalary": "\$80,000",
      "requiredSkills": ["Problem Solving", "Coding", "Teamwork"],
    };
  }
}
