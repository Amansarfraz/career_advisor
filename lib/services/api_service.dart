// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiService {
//   // REPLACE WITH YOUR PC IPV4 ADDRESS
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

//     return {"success": false, "message": "Server error"};
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
  // Android Emulator
  static const String baseUrl = "http://10.0.2.2:8000";

  // Agar physical mobile use kar rahi ho to:
  // static const String baseUrl = "http://YOUR_IPV4:8000";

  // ---------------- LOGIN ----------------
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "password": password}),
    );

    return jsonDecode(response.body);
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
  Future<Map<String, dynamic>> getCareerDetails(String careerKey) async {
    final response = await http.get(
      Uri.parse("$baseUrl/career/career-details/$careerKey"),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return {"success": false, "message": "Career not found"};
  }
}
