// import 'package:flutter/material.dart';
// import 'career_details_screen.dart';
// import 'career_assessment_screen.dart';

// class CareerRecommendationScreen extends StatefulWidget {
//   final int matchPercentage;
//   final String careerName;
//   final String shortExplanation;

//   const CareerRecommendationScreen({
//     super.key,
//     required this.matchPercentage,
//     required this.careerName,
//     required this.shortExplanation,
//   });

//   @override
//   State<CareerRecommendationScreen> createState() =>
//       _CareerRecommendationScreenState();
// }

// class _CareerRecommendationScreenState extends State<CareerRecommendationScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _progressAnimation;
//   late Animation<int> _countAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1600),
//     );

//     _progressAnimation = Tween<double>(
//       begin: 0.0,
//       end: widget.matchPercentage / 100,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

//     _countAnimation = IntTween(
//       begin: 0,
//       end: widget.matchPercentage,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     bool isDark = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       backgroundColor: isDark ? Colors.black : Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               /// HEADER
//               Container(
//                 width: double.infinity,
//                 height: 80,
//                 color: const Color(0xFF3F72C8),
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Positioned(
//                       left: 4,
//                       child: IconButton(
//                         icon: const Icon(
//                           Icons.arrow_back,
//                           color: Colors.white,
//                           size: 28,
//                         ),
//                         onPressed: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const CareerAssessmentScreen(),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     const Text(
//                       "Career Recommendation",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 40),

//               /// MATCH CIRCLE
//               AnimatedBuilder(
//                 animation: _controller,
//                 builder: (context, child) {
//                   return SizedBox(
//                     width: 220,
//                     height: 220,
//                     child: Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         SizedBox(
//                           width: 220,
//                           height: 220,
//                           child: CircularProgressIndicator(
//                             value: 1.0,
//                             strokeWidth: 15,
//                             color: Colors.grey.shade300,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 220,
//                           height: 220,
//                           child: CircularProgressIndicator(
//                             value: _progressAnimation.value,
//                             strokeWidth: 15,
//                             color: const Color(0xFF3F72C8),
//                           ),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "${_countAnimation.value}%",
//                               style: const TextStyle(
//                                 fontSize: 36,
//                                 fontWeight: FontWeight.w900,
//                                 color: Color(0xFF3F72C8),
//                               ),
//                             ),
//                             const Text(
//                               "MATCH",
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w800,
//                                 color: Colors.grey,
//                                 letterSpacing: 2,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16,
//                               ),
//                               child: Text(
//                                 widget.careerName,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w800,
//                                   color: isDark
//                                       ? Colors.white
//                                       : const Color(0xFF1a2a4a),
//                                 ),
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),

//               const SizedBox(height: 48),

//               /// EXPLANATION CARD
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(18),
//                   decoration: BoxDecoration(
//                     color: isDark
//                         ? const Color(0xff1e1e1e)
//                         : const Color(0xFFDCE6F2),
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Short Explanation",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: isDark
//                               ? Colors.white
//                               : const Color(0xFF1a2a4a),
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         widget.shortExplanation,
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: isDark
//                               ? Colors.white70
//                               : const Color(0xFF3a4a6a),
//                           height: 1.6,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 40),

//               /// BUTTON
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: SizedBox(
//                   width: double.infinity,
//                   height: 60,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => CareerDetailsScreen(
//                             careerName: widget.careerName,
//                           ),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF3F72C8),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                     ),
//                     child: const Text(
//                       "View Roadmap & Details",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'career_details_screen.dart';
import 'career_assessment_screen.dart';

class CareerRecommendationScreen extends StatelessWidget {
  final int matchPercentage;
  final String careerName;
  final String shortExplanation;

  const CareerRecommendationScreen({
    super.key,
    required this.matchPercentage,
    required this.careerName,
    required this.shortExplanation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recommendation"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const CareerAssessmentScreen()),
            );
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("$matchPercentage%", style: const TextStyle(fontSize: 40)),

            const SizedBox(height: 20),

            Text(careerName, style: const TextStyle(fontSize: 22)),

            const SizedBox(height: 20),

            Text(shortExplanation),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CareerDetailsScreen(careerName: careerName),
                  ),
                );
              },
              child: const Text("View Details"),
            ),
          ],
        ),
      ),
    );
  }
}
