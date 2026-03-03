// import 'dart:async';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     // 3 second delay then navigate
//     Timer(const Duration(seconds: 3), () {
//       // Navigator.pushReplacement(
//       //   context,
//       //   MaterialPageRoute(builder: (context) => const NextScreen()),
//       // );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFF1E3A8A), // Dark Blue
//               Color(0xFF3B82F6), // Light Blue
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // 🔹 APP ICON (Yahan apna path laga dena)
//             const SizedBox(height: 80),
//             Image.asset(
//               'assets/images/logo.png', // <-- yahan apna icon path dalna
//               height: 400,
//               width: 400,
//             ),

//             const SizedBox(height: 40),

//             // 🔹 Tagline
//             const Text(
//               "Guiding Your Future, Step\n by Step",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // 3 second delay then navigate
    Timer(const Duration(seconds: 3), () {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => const NextScreen()),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1E3A8A), // Dark Blue
              Color(0xFF3B82F6), // Light Blue
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.1), // Top margin thoda zyada
            // 🔹 APP ICON (Responsive size)
            Image.asset(
              'assets/images/logo.png', // apna icon path
              height: screenHeight * 0.4, // screen ka 40% height
              width: screenWidth * 0.6, // screen ka 60% width
              fit: BoxFit.contain,
            ),

            SizedBox(
              height: screenHeight * 0.02,
            ), // Logo aur tagline ke beech thoda gap
            // 🔹 Tagline (Bigger font)
            Text(
              "Guiding Your Future, Step\nby Step",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenHeight * 0.035, // screen ke hisaab se font
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
