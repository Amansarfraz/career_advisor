// // import 'dart:async';
// // import 'package:flutter/material.dart';

// // class SplashScreen extends StatefulWidget {
// //   const SplashScreen({super.key});

// //   @override
// //   State<SplashScreen> createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   void initState() {
// //     super.initState();

// //     // 3 second delay then navigate
// //     Timer(const Duration(seconds: 3), () {
// //       // Navigator.pushReplacement(
// //       //   context,
// //       //   MaterialPageRoute(builder: (context) => const NextScreen()),
// //       // );
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final screenHeight = MediaQuery.of(context).size.height;
// //     final screenWidth = MediaQuery.of(context).size.width;

// //     return Scaffold(
// //       body: Container(
// //         width: double.infinity,
// //         height: double.infinity,
// //         decoration: const BoxDecoration(
// //           gradient: LinearGradient(
// //             colors: [
// //               Color(0xFF1E3A8A), // Dark Blue
// //               Color(0xFF3B82F6), // Light Blue
// //             ],
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //           ),
// //         ),
// //         child: Column(
// //           children: [
// //             SizedBox(height: screenHeight * 0.05), // Thoda top space
// //             // 🔹 BIG LOGO
// //             Image.asset(
// //               'assets/images/logo.png',
// //               height: screenHeight * 0.65, // Logo ka size huge
// //               width: screenWidth * 0.85,
// //               fit: BoxFit.contain,
// //             ),

// //             SizedBox(height: screenHeight * 0.01), // Bilkul chhota gap
// //             // 🔹 Small Tagline
// //             Text(
// //               "Guiding Your Future, Step by Step",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(
// //                 color: Colors.white,
// //                 fontSize: screenHeight * 0.03, // logo ke mukable chhota
// //                 fontWeight: FontWeight.w500,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
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
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;

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
//           child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const SizedBox(height: 80),

//               Column(
//                 children: [
//                   Image.asset(
//                     'assets/images/logo.png',
//                     height: 265,
//                     width: 225,
//                     fit: BoxFit.contain,
//                   ),
//         // child: Column(
//         //   children: [
//         //     SizedBox(height: screenHeight * 0.04), // Top margin thoda kam
//         //     // 🔹 HERO BIG LOGO
//         //     Image.asset(
//         //       'assets/images/logo.png',
//         //       height: screenHeight * 0.75, // Logo ab huge! 75% screen height
//         //       width: screenWidth * 0.85,
//         //       fit: BoxFit.contain,
//         //     ),

//             SizedBox(height: screenHeight * 0.01), // Bilkul chhota gap
//             // 🔹 Small tagline
//             Text(
//               "Guiding Your Future, Step by Step",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: screenHeight * 0.03, // Tagline chhoti aur neat
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

        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// 🔹 BIG LOGO
              Image.asset(
                'assets/images/logo.png',
                height: screenHeight * 0.80,
                width: screenWidth * 0.95,
                fit: BoxFit.contain,
              ),

              SizedBox(height: screenHeight * 0.010),

              /// 🔹 TAGLINE
              Text(
                "Guiding Your Future, Step \n by Step",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.03,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
