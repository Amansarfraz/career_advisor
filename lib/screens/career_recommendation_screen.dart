import 'package:flutter/material.dart';

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
    // circle progress value (0.0 - 1.0)
    double progress = matchPercentage / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3F72C8),
        title: const Text("Career Recommendations"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Circular match percentage
            SizedBox(
              width: 200,
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    value: 1, // background grey circle
                    strokeWidth: 12,
                    color: Colors.grey.shade300,
                  ),
                  CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 12,
                    color: const Color(0xFF3F72C8),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "MATCH: $matchPercentage%",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        careerName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// Short Explanation
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFDCE6F2), // light blue
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Short Explanation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(shortExplanation, style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),

            const Spacer(),

            /// View Roadmap & Details Button
            SizedBox(
              width: 383,
              height: 67,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Navigate to roadmap/details
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3F72C8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  "View Roadmap & Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
