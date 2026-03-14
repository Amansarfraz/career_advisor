import 'package:career_advisor/screens/about_app_screen.dart';
import 'package:career_advisor/screens/logout_screen.dart';
import 'package:flutter/material.dart';
import '../main.dart';
//import 'career_details_screen.dart';

class SettingScreen extends StatelessWidget {
  final bool isDark;
  final Function(bool) onToggle;

  const SettingScreen({
    super.key,
    required this.isDark,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xFF3B82F6),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// DARK MODE
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.dark_mode, color: Colors.blue),
                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Dark Mode",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Switch to dark mode",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  Switch(
                    value: MyApp.of(context)!.isDarkMode,
                    onChanged: (value) {
                      onToggle(value);
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// ABOUT APP
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: BorderRadius.circular(12),
              ),

              child: Row(
                children: [
                  const Icon(Icons.info, color: Color(0xff1E3A8A)),
                  const SizedBox(width: 12),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About App",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Developer information",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  /// NAVIGATOR LAGA DIYA
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 16),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutAppScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// LOGOUT
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(12),
              ),

              child: Row(
                children: [
                  const Icon(Icons.logout, color: Colors.red),
                  const SizedBox(width: 12),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "Sign out of your account",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 16),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogoutScreen(),
                        ),
                      );
                    },
                  ), //const Icon(Icons.arrow_forward_ios, size: 16),
                  /// YAHAN NAVIGATOR LAGANA HAI AGAR LOGOUT SCREEN OPEN KARNA HO
                ],
              ),
            ),

            const SizedBox(height: 40),

            /// BLUE CIRCLE LOGO
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF3B82F6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset("assets/images/logo.png"),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Career Advisor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            const SizedBox(height: 5),

            const Text(
              "Guiding Your Future, Step by Step",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// ABOUT SCREEN
// class AboutScreen extends StatelessWidget {
//   const AboutScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("About App")),
//       body: const Center(child: Text("Developer Info")),
//     );
//   }
// }

// /// LOGOUT SCREEN
// class LogoutScreen extends StatelessWidget {
//   const LogoutScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Logout")),
//       body: const Center(child: Text("Logout Screen")),
//     );
//   }
// }
