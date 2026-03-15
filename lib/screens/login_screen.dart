// import 'package:flutter/material.dart';
// import 'career_assessment_screen.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xff1E3A8A), Color(0xff3B82F6)],
//           ),
//         ),

//         /// ✅ SCROLL ADDED HERE
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(height: 120),

//               /// LOGO IMAGE
//               Image.asset("assets/images/logo.png", height: 220),

//               const SizedBox(height: 40),

//               /// EMAIL FIELD
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 30),
//                 decoration: BoxDecoration(
//                   color: const Color(0xffE5E7EB),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: const TextField(
//                   style: TextStyle(fontSize: 20),
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Icon(Icons.email),
//                     hintText: "Email",
//                     contentPadding: EdgeInsets.symmetric(vertical: 18),
//                     hintStyle: TextStyle(fontSize: 20),
//                     labelStyle: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               /// PASSWORD FIELD
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 30),
//                 decoration: BoxDecoration(
//                   color: const Color(0xffE5E7EB),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: const TextField(
//                   obscureText: true,
//                   style: TextStyle(fontSize: 20),
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Icon(Icons.lock),
//                     hintText: "Password",
//                     contentPadding: EdgeInsets.symmetric(vertical: 18),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 35),

//               /// LOGIN BUTTON
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const CareerAssessmentScreen(),
//                     ),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xffE5E7EB),
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 60,
//                     vertical: 15,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 child: const Text(
//                   "Login",
//                   style: TextStyle(
//                     color: Color(0xff1E3A8A),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 50),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
