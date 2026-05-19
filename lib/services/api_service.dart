// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiService {
//   static const String baseUrl = "http://127.0.0.1:8000";

//   // ---------------- LOGIN ----------------
//   Future<bool> login(String email, String password) async {
//     final response = await http.post(
//       Uri.parse("$baseUrl/auth/login"),

//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"email": email, "password": password}),
//     );

//     final data = jsonDecode(response.body);

//     return data["success"] == true;
//   }

//   // ---------------- ASSESSMENT ----------------
//   Future<Map<String, dynamic>> submitAssessment(List<int> answers) async {
//     final response = await http.post(
//       Uri.parse("$baseUrl/assessment/career-assessment"),
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"answers": answers}),
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     }

//     return {"error": "Server error"};
//   }

//   // ---------------- CAREER DETAILS ----------------
//   Future<Map<String, dynamic>> getCareerDetails(String name) async {
//     final response = await http.get(
//       Uri.parse("$baseUrl/career/$name"),
//       headers: {"Content-Type": "application/json"},
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     }

//     return {"success": false, "message": "Career not found"};
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // REPLACE WITH YOUR PC IPV4 ADDRESS
  static const String baseUrl = " http://127.0.0.1:8000";

  // ---------------- LOGIN ----------------
  Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/login"),

      headers: {"Content-Type": "application/json"},

      body: jsonEncode({"email": email, "password": password}),
    );

    final data = jsonDecode(response.body);

    return data["success"] == true;
  }

  // ---------------- ASSESSMENT ----------------
  Future<Map<String, dynamic>> submitAssessment(List<int> answers) async {
    final response = await http.post(
      Uri.parse("$baseUrl/assessment/career-assessment"),

      headers: {"Content-Type": "application/json"},

      body: jsonEncode({"answers": answers}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return {"success": false, "message": "Server error"};
  }

  // ---------------- CAREER DETAILS ----------------
  Future<Map<String, dynamic>> getCareerDetails(String name) async {
    final response = await http.get(
      Uri.parse("$baseUrl/career/$name"),

      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return {"success": false, "message": "Career not found"};
  }
}
