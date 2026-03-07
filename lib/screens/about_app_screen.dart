import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔷 Header
            Container(
              height: 80,
              color: Color(0xFF3B82F6),
              padding: const EdgeInsets.only(top: 35, left: 16, right: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "About App",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // 🔹 Animation Container
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: isDark ? Colors.grey.shade900 : Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/Rectangle.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 📄 Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                " Our Career Advisor app is your personal  AI mentor designed to bridge the gap between  your passion and a successful profession."
                " We transform your unique personality into a concrete career path by providing step-by-step roadmaps,essential skill sets, and real-world salary insights.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: isDark ? Colors.white70 : Colors.grey.shade700,
                  fontSize: 14.5,
                  height: 1.4,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🟦 Logo Section
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3B82F6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 40,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                Text(
                  "Guiding Your Future, Step \n by Step",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: isDark ? Colors.white70 : Colors.grey,
                  ),
                ),

                const SizedBox(height: 6),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
