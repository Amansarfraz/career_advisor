// import 'package:career_advisor/screens/login_screen.dart';
// import 'package:flutter/material.dart';

// class GetStartedScreen extends StatelessWidget {
//   const GetStartedScreen({super.key});

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
//             colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
//           ),
//         ),

//         child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const SizedBox(height: 20),

//               /// 🔵 LOGO + TAGLINE
//               Column(
//                 children: [
//                   Image.asset(
//                     'assets/images/logo.png',
//                     width: 350,
//                     height: 350,
//                     fit: BoxFit
//                         .cover, // cover se tagline bilkul neeche aa jayegi
//                   ),

//                   /// TAGLINE (logo ke bilkul neeche)
//                   const Text(
//                     'Guiding Your Future, Step\nby Step',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 30,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white,
//                       height: 1.6,
//                       letterSpacing: 0.3,
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 30),

//               /// 🔵 GET STARTED BUTTON
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 40),
//                 child: SizedBox(
//                   width: 280,
//                   height: 60,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const LoginScreen(),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                     ),
//                     child: const Text(
//                       "Get Started",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF2751AC),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:career_advisor/screens/login_screen.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

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

        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),

              /// 🔵 LOGO + TAGLINE
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 350,
                    height: 350,
                    fit: BoxFit
                        .cover, // cover se tagline bilkul neeche aa jayegi
                  ),

                  /// TAGLINE (logo ke bilkul neeche)
                  const Text(
                    'Guiding Your Future, Step\nby Step',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      height: 1.6,
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10), // tag line ke just neeche button
              /// 🔵 GET STARTED BUTTON
              SizedBox(
                width: 280,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2751AC),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40), // bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
