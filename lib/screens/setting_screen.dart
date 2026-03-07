// import 'package:flutter/material.dart';
// import '../main.dart';
// import 'career_details_screen.dart';

// class SettingScreen extends StatelessWidget {
//   final bool isDark;
//   final Function(bool) onToggle;

//   const SettingScreen({
//     super.key,
//     required this.isDark,
//     required this.onToggle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Settings"),
//         backgroundColor: const Color(0xff1E3A8A),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // goes back to previous screen
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             /// DARK MODE
//             Container(
//               padding: const EdgeInsets.all(14),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 children: [
//                   const Icon(Icons.dark_mode, color: Colors.blue),
//                   const SizedBox(width: 12),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Dark Mode",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           "Switch to dark mode",
//                           style: TextStyle(fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Switch(
//                     value: MyApp.of(context)!.isDarkMode,
//                     onChanged: (value) {
//                       onToggle(value); // toggles app-wide dark mode
//                     },
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 15),

//             /// ABOUT APP
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => const AboutScreen()),
//                 );
//               },
//               child: Container(
//                 padding: const EdgeInsets.all(14),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.purple),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Row(
//                   children: const [
//                     Icon(Icons.info, color: Color(0xff1E3A8A)),
//                     SizedBox(width: 12),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "About App",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             "Developer information",
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Icon(Icons.arrow_forward_ios, size: 16),
//                   ],
//                 ),
//               ),
//             ),

//             const SizedBox(height: 15),

//             /// LOGOUT
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => const LogoutScreen()),
//                 );
//               },
//               child: Container(
//                 padding: const EdgeInsets.all(14),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.red),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Row(
//                   children: const [
//                     Icon(Icons.logout, color: Colors.red),
//                     SizedBox(width: 12),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Logout",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.red,
//                             ),
//                           ),
//                           Text(
//                             "Sign out of your account",
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Icon(Icons.arrow_forward_ios, size: 16),
//                   ],
//                 ),
//               ),
//             ),

//             const SizedBox(height: 40),

//             /// BLUE CIRCLE LOGO
//             Container(
//               height: 120,
//               width: 120,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Color(0xff1E3A8A),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: Image.asset("assets/images/logo.png"),
//               ),
//             ),

//             const SizedBox(height: 10),

//             /// TAGLINE
//             const Text(
//               "Career Advisor",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),

//             const SizedBox(height: 5),

//             const Text(
//               "Guiding Your Future, Step by Step",
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// /// ── ABOUT SCREEN ─────────────────────────────
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

// /// ── LOGOUT SCREEN ─────────────────────────────
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
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  final bool isDark;
  final Function(bool) onToggle;

  const SettingScreen({
    super.key,
    required this.isDark,
    required this.onToggle,
  });

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late bool isDarkMode;

  @override
  void initState() {
    super.initState();
    isDarkMode = widget.isDark;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xff1E3A8A),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
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
                  const Expanded(
                    child: Text(
                      "Dark Mode",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Switch(
                    value: isDarkMode,
                    onChanged: (value) {
                      setState(() => isDarkMode = value);
                      widget.onToggle(value);
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// ABOUT APP
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.info, color: Color(0xff1E3A8A)),
                    SizedBox(width: 12),
                    Expanded(
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
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            /// LOGOUT
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Just go back for demo
              },
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.logout, color: Colors.red),
                    SizedBox(width: 12),
                    Expanded(
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
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            /// LOGO
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff1E3A8A),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset("assets/images/logo.png"),
              ),
            ),

            const SizedBox(height: 10),

            /// TAGLINE
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
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About App")),
      body: const Center(child: Text("Developer Info")),
    );
  }
}
