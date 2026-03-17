import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // Base URL for your backend
  static const String baseUrl = "http://127.0.0.1:8000";
  // For Android emulator, use:  static const String baseUrl = "http://10.0.2.2:8000";

  // Login method
  Future<bool> login(String email, String password) async {
    try {
      var res = await http.post(
        Uri.parse("$baseUrl/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "password": password}),
      );

      if (res.statusCode == 200) {
        return true;
      } else {
        print("Login failed: ${res.statusCode}, ${res.body}");
        return false;
      }
    } catch (e) {
      print("Login error: $e");
      return false;
    }
  }

  // Submit career assessment
  Future<Map<String, dynamic>?> submitAssessment(List<int?> answers) async {
    try {
      var res = await http.post(
        Uri.parse("$baseUrl/career/assess"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"answers": answers}),
      );

      if (res.statusCode == 200) {
        return jsonDecode(res.body);
      } else {
        print("Assessment submission failed: ${res.statusCode}, ${res.body}");
        return null;
      }
    } catch (e) {
      print("Assessment submission error: $e");
      return null;
    }
  }

  // Get career details by name
  Future<Map<String, dynamic>?> getCareerDetails(String name) async {
    try {
      var res = await http.get(Uri.parse("$baseUrl/career/details/$name"));

      if (res.statusCode == 200) {
        return jsonDecode(res.body);
      } else {
        print("Get career details failed: ${res.statusCode}, ${res.body}");
        return null;
      }
    } catch (e) {
      print("Get career details error: $e");
      return null;
    }
  }
}
