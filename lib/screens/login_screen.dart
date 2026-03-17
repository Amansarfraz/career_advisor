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
import 'package:flutter/material.dart';
import 'career_assessment_screen.dart'; // Your assessment screen

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1E3A8A), Color(0xff3B82F6)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 120),

              // Logo
              Image.asset("assets/images/logo.png", height: 220),

              const SizedBox(height: 40),

              // Email Field
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color(0xffE5E7EB),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password Field
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color(0xffE5E7EB),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                  ),
                ),
              ),

              const SizedBox(height: 35),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 229, 230, 233),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 120,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () async {
                  // 🔹 Simulate login delay
                  await Future.delayed(const Duration(seconds: 1));

                  // 🔹 Dummy login always succeeds
                  bool success = true;

                  if (success) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CareerAssessmentScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Invalid Credentials")),
                    );
                  }
                },
                child: const Text("Login", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
