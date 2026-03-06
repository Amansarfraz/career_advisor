// import 'package:flutter/material.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

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
//             colors: [
//               Color(0xFF1E3A8A), // Dark Blue
//               Color(0xFF3B82F6), // Light Blue // light blue bottom
//             ],
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // ✅ LOGO — Career Advisor text logo ke andar hi hai
//             // Apna logo assets mein add karein aur path yahan likhein
//             Image.asset(
//               'assets/images/logo.png', // 👈 Yahan apna logo path likhein
//               width: 500,
//               height: 500,
//               fit: BoxFit.contain,
//             ),

//             const SizedBox(height: 10),

//             // Tagline
//             const Text(
//               'Guiding Your Future, Step\nby Step',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 30,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.white,
//                 height: 1.6,
//                 letterSpacing: 0.3,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:career_advisor/screens/get_started_screen.dart';
import 'package:flutter/material.dart';
// import 'get_started_screen.dart';  // 👈 apni next screen import kar lena

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // ⏳ 3 second delay
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const GetStartedScreen(), // 👈 apni screen ka naam
        ),
      );
    });
  }

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
            colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// LOGO
            Image.asset(
              'assets/images/logo.png',
              width: 500,
              height: 500,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 10),

            /// TAGLINE
            const Text(
              'Guiding Your Future, Step\nby Step',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                // height: 1.6,
                // letterSpacing: 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
