// // import 'package:flutter/material.dart';

// // class CareerRecommendationScreen extends StatelessWidget {
// //   final int matchPercentage;
// //   final String careerName;
// //   final String shortExplanation;

// //   const CareerRecommendationScreen({
// //     super.key,
// //     required this.matchPercentage,
// //     required this.careerName,
// //     required this.shortExplanation,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     double progress = matchPercentage / 100;

// //     return WillPopScope(
// //       onWillPop: () async => false, // disable back
// //       child: Scaffold(
// //         body: SafeArea(
// //           child: Column(
// //             children: [
// //               // HEADER
// //               Container(
// //                 height: 80,
// //                 width: 412,
// //                 alignment: Alignment.center,
// //                 color: const Color(0xFF3F72C8),
// //                 child: const Text(
// //                   "Career Recommendation",
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 30,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                   textAlign: TextAlign.center,
// //                 ),
// //               ),

// //               const SizedBox(height: 30),

// //               // CIRCULAR PROGRESS & CAREER NAME
// //               Center(
// //                 child: Stack(
// //                   alignment: Alignment.center,
// //                   children: [
// //                     SizedBox(
// //                       width: 180,
// //                       height: 180,
// //                       child: CircularProgressIndicator(
// //                         value: 1, // background circle
// //                         strokeWidth: 12,
// //                         color: Colors.grey.shade300,
// //                       ),
// //                     ),
// //                     SizedBox(
// //                       width: 180,
// //                       height: 180,
// //                       child: CircularProgressIndicator(
// //                         value: progress,
// //                         strokeWidth: 12,
// //                         color: const Color(0xFF3F72C8),
// //                       ),
// //                     ),
// //                     Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Text(
// //                           "$matchPercentage%",
// //                           style: const TextStyle(
// //                             fontSize: 28,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         const SizedBox(height: 8),
// //                         Text(
// //                           careerName,
// //                           textAlign: TextAlign.center,
// //                           style: const TextStyle(
// //                             fontSize: 22,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ),

// //               const SizedBox(height: 30),

// //               // SHORT EXPLANATION
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 16),
// //                 child: Container(
// //                   width: double.infinity,
// //                   padding: const EdgeInsets.all(16),
// //                   decoration: BoxDecoration(
// //                     color: const Color(0xFFDCE6F2),
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       const Text(
// //                         "Short Explanation",
// //                         style: TextStyle(
// //                           fontSize: 20,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 10),
// //                       Text(
// //                         shortExplanation,
// //                         style: const TextStyle(fontSize: 16),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),

// //               const Spacer(),

// //               // VIEW ROADMAP BUTTON
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 16),
// //                 child: SizedBox(
// //                   width: double.infinity,
// //                   height: 67,
// //                   child: ElevatedButton(
// //                     onPressed: () {
// //                       // TODO: Navigate to roadmap/details
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: const Color(0xFF3F72C8),
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(40),
// //                       ),
// //                     ),
// //                     child: const Text(
// //                       "View Roadmap & Details",
// //                       style: TextStyle(
// //                         fontSize: 20,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.white,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

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
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             // ─── HEADER 412 x 80 ──────────────────────────────────────
//             Container(
//               width: double.infinity,
//               height: 80,
//               color: const Color(0xFF3F72C8),
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   // Back Button - previous screen par wapas
//                   Positioned(
//                     left: 4,
//                     child: IconButton(
//                       icon: const Icon(
//                         Icons.arrow_back,
//                         color: Colors.white,
//                         size: 28,
//                       ),
//                       onPressed: () => Navigator.pop(context),
//                     ),
//                   ),

//                   // Title - Bold, White, Center
//                   const Text(
//                     "Career Recommendation",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 40),

//             // ─── CIRCULAR PROGRESS WITH ANIMATED COUNTER ──────────────
//             AnimatedBuilder(
//               animation: _controller,
//               builder: (context, child) {
//                 return SizedBox(
//                   width: 210,
//                   height: 210,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       // Background grey circle
//                       SizedBox(
//                         width: 210,
//                         height: 210,
//                         child: CircularProgressIndicator(
//                           value: 1.0,
//                           strokeWidth: 14,
//                           color: Colors.grey.shade200,
//                           strokeCap: StrokeCap.round,
//                         ),
//                       ),

//                       // Animated blue progress circle
//                       SizedBox(
//                         width: 210,
//                         height: 210,
//                         child: CircularProgressIndicator(
//                           value: _progressAnimation.value,
//                           strokeWidth: 14,
//                           color: const Color(0xFF3F72C8),
//                           strokeCap: StrokeCap.round,
//                         ),
//                       ),

//                       // Center: percent + MATCH label + career name
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "${_countAnimation.value}%",
//                             style: const TextStyle(
//                               fontSize: 34,
//                               fontWeight: FontWeight.w800,
//                               color: Color(0xFF3F72C8),
//                             ),
//                           ),
//                           const Text(
//                             "MATCH",
//                             style: TextStyle(
//                               fontSize: 11,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.grey,
//                               letterSpacing: 1.5,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 14),
//                             child: Text(
//                               widget.careerName,
//                               textAlign: TextAlign.center,
//                               style: const TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF1a2a4a),
//                               ),
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),

//             const SizedBox(height: 30),

//             // ─── SHORT EXPLANATION CARD ───────────────────────────────
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(18),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFDCE6F2),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Short Explanation",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF1a2a4a),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       widget.shortExplanation,
//                       style: const TextStyle(
//                         fontSize: 15,
//                         color: Color(0xFF3a4a6a),
//                         height: 1.6,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             const Spacer(),

//             // ─── VIEW ROADMAP BUTTON ──────────────────────────────────
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 60,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // TODO: Navigator.push to RoadmapScreen
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF3F72C8),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(40),
//                     ),
//                     elevation: 4,
//                   ),
//                   child: const Text(
//                     "View Roadmap & Details",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       letterSpacing: 0.3,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 24),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ─── USAGE EXAMPLE ────────────────────────────────────────────────────────────
// // Previous screen se is tarah navigate karo:
// //
// // Navigator.push(
// //   context,
// //   MaterialPageRoute(
// //     builder: (_) => CareerRecommendationScreen(
// //       matchPercentage: 87,
// //       careerName: "Software Engineer",
// //       shortExplanation:
// //           "Aapki Technology aur Problem Solving ki interest, "
// //           "aur Coding skills ki wajah se Software Engineering "
// //           "aapke liye best career hai.",
// //     ),
// //   ),
// // );

import 'package:flutter/material.dart';

class CareerRecommendationScreen extends StatefulWidget {
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
  State<CareerRecommendationScreen> createState() =>
      _CareerRecommendationScreenState();
}

class _CareerRecommendationScreenState extends State<CareerRecommendationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _progressAnimation;
  late Animation<int> _countAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );

    _progressAnimation = Tween<double>(
      begin: 0.0,
      end: widget.matchPercentage / 100,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _countAnimation = IntTween(
      begin: 0,
      end: widget.matchPercentage,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // ─── HEADER 412 x 80 ──────────────────────────────────────
            Container(
              width: double.infinity,
              height: 80,
              color: const Color(0xFF3F72C8),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Back Button
                  Positioned(
                    left: 4,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),

                  // Title - Bold, White, Center
                  const Text(
                    "Career Recommendation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // ─── CIRCULAR PROGRESS WITH ANIMATED COUNTER ──────────────
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return SizedBox(
                  width: 220,
                  height: 220,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Background grey circle
                      SizedBox(
                        width: 220,
                        height: 220,
                        child: CircularProgressIndicator(
                          value: 1.0,
                          strokeWidth: 15,
                          color: Colors.grey.shade200,
                          strokeCap: StrokeCap.round,
                        ),
                      ),

                      // Animated blue progress circle
                      SizedBox(
                        width: 220,
                        height: 220,
                        child: CircularProgressIndicator(
                          value: _progressAnimation.value,
                          strokeWidth: 15,
                          color: const Color(0xFF3F72C8),
                          strokeCap: StrokeCap.round,
                        ),
                      ),

                      // ── Center Content (all BOLD) ──
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Animated percentage
                          Text(
                            "${_countAnimation.value}%",
                            style: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w900, // Extra Bold
                              color: Color(0xFF3F72C8),
                            ),
                          ),

                          const Text(
                            "MATCH",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800, // Bold
                              color: Colors.grey,
                              letterSpacing: 2,
                            ),
                          ),

                          const SizedBox(height: 10),

                          // Career Name - Bold inside circle
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              widget.careerName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800, // Bold
                                color: Color(0xFF1a2a4a),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),

            // ─── 3 LINE SPACE AFTER CIRCLE ────────────────────────────
            const SizedBox(height: 48), // ~3 lines spacing
            // ─── SHORT EXPLANATION CARD ───────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFDCE6F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Short Explanation",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1a2a4a),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.shortExplanation,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color(0xFF3a4a6a),
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            // ─── VIEW ROADMAP BUTTON ──────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Navigator.push to RoadmapScreen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3F72C8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 4,
                  ),
                  child: const Text(
                    "View Roadmap & Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
