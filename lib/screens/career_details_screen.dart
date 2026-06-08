// import 'package:flutter/material.dart';
// import 'package:career_advisor/screens/setting_screen.dart';

// import '../main.dart';
// import '../models/career_model.dart';

// /// ======================================================
// /// CAREER DETAILS SCREEN
// /// ======================================================
// class CareerDetailsScreen extends StatelessWidget {
//   final CareerModel career;

//   const CareerDetailsScreen({super.key, required this.career});

//   @override
//   Widget build(BuildContext context) {
//     final bool isDark = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       backgroundColor: isDark ? Colors.black : Colors.white,

//       body: SafeArea(
//         child: Column(
//           children: [
//             /// ======================================================
//             /// HEADER
//             /// ======================================================
//             Container(
//               height: 80,
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(horizontal: 6),
//               color: const Color(0xFF3F72C8),

//               child: Row(
//                 children: [
//                   /// BACK BUTTON
//                   IconButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },

//                     icon: const Icon(
//                       Icons.arrow_back,
//                       color: Colors.white,
//                       size: 28,
//                     ),
//                   ),

//                   /// TITLE
//                   const Expanded(
//                     child: Text(
//                       "Career Details",

//                       textAlign: TextAlign.center,

//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),

//                   /// SETTINGS
//                   IconButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,

//                         MaterialPageRoute(
//                           builder: (context) => SettingScreen(
//                             isDark: MyApp.of(context)!.isDarkMode,
//                             onToggle: MyApp.of(context)!.toggleTheme,
//                           ),
//                         ),
//                       );
//                     },

//                     icon: const Icon(Icons.settings, color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),

//             /// ======================================================
//             /// BODY
//             /// ======================================================
//             Expanded(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.all(16),

//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,

//                   children: [
//                     /// ======================================================
//                     /// TOP CARD
//                     /// ======================================================
//                     Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.all(18),

//                       decoration: BoxDecoration(
//                         color: isDark ? Colors.grey[900] : Colors.white,

//                         borderRadius: BorderRadius.circular(18),

//                         border: Border.all(
//                           color: const Color(0xFF3F72C8).withOpacity(0.25),
//                         ),
//                       ),

//                       child: Row(
//                         children: [
//                           Container(
//                             width: 70,
//                             height: 70,

//                             decoration: BoxDecoration(
//                               color: const Color(0xFFEEF2FB),
//                               borderRadius: BorderRadius.circular(16),
//                             ),

//                             child: const Icon(
//                               Icons.work,
//                               size: 38,
//                               color: Color(0xFF3F72C8),
//                             ),
//                           ),

//                           const SizedBox(width: 16),

//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,

//                               children: [
//                                 Text(
//                                   career.name,

//                                   style: TextStyle(
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.bold,

//                                     color: isDark
//                                         ? Colors.white
//                                         : const Color(0xFF1A2A4A),
//                                   ),
//                                 ),

//                                 const SizedBox(height: 8),

//                                 Text(
//                                   career.description,

//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     height: 1.5,

//                                     color: isDark
//                                         ? Colors.white70
//                                         : const Color(0xFF4A5A7A),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     const SizedBox(height: 20),

//                     /// ======================================================
//                     /// REQUIRED SKILLS
//                     /// ======================================================
//                     _InfoCard(
//                       icon: Icons.menu_book_outlined,
//                       title: "Required Skills",
//                       content: career.requiredSkills,
//                       isDark: isDark,
//                     ),

//                     const SizedBox(height: 14),

//                     /// ======================================================
//                     /// EDUCATION PATH
//                     /// ======================================================
//                     _InfoCard(
//                       icon: Icons.school_outlined,
//                       title: "Education Path",
//                       content: career.educationPath,
//                       isDark: isDark,
//                     ),

//                     const SizedBox(height: 14),

//                     /// ======================================================
//                     /// SALARY
//                     /// ======================================================
//                     _InfoCard(
//                       icon: Icons.attach_money,
//                       title: "Salary Range",
//                       content: career.salaryRange,
//                       isDark: isDark,
//                     ),

//                     const SizedBox(height: 22),

//                     /// ======================================================
//                     /// ROADMAP
//                     /// ======================================================
//                     Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.all(18),

//                       decoration: BoxDecoration(
//                         color: isDark ? Colors.grey[900] : Colors.white,

//                         borderRadius: BorderRadius.circular(18),

//                         border: Border.all(
//                           color: const Color(0xFF3F72C8).withOpacity(0.25),
//                         ),
//                       ),

//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,

//                         children: [
//                           Row(
//                             children: const [
//                               Icon(Icons.route, color: Color(0xFF3F72C8)),

//                               SizedBox(width: 10),

//                               Text(
//                                 "Career Roadmap",

//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xFF1A2A4A),
//                                 ),
//                               ),
//                             ],
//                           ),

//                           const SizedBox(height: 20),

//                           ...career.roadmap.map((step) {
//                             return Padding(
//                               padding: const EdgeInsets.only(bottom: 18),

//                               child: Container(
//                                 padding: const EdgeInsets.all(14),

//                                 decoration: BoxDecoration(
//                                   color: isDark
//                                       ? Colors.black26
//                                       : const Color(0xFFF8FAFF),

//                                   borderRadius: BorderRadius.circular(14),
//                                 ),

//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,

//                                   children: [
//                                     Text(
//                                       step["title"] ?? "",

//                                       style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,

//                                         color: isDark
//                                             ? Colors.white
//                                             : const Color(0xFF1A2A4A),
//                                       ),
//                                     ),

//                                     const SizedBox(height: 8),

//                                     Text(
//                                       step["desc"] ?? "",

//                                       style: TextStyle(
//                                         fontSize: 14,
//                                         height: 1.6,

//                                         color: isDark
//                                             ? Colors.white70
//                                             : const Color(0xFF4A5A7A),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// /// ======================================================
// /// INFO CARD
// /// ======================================================
// class _InfoCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String content;
//   final bool isDark;

//   const _InfoCard({
//     required this.icon,
//     required this.title,
//     required this.content,
//     required this.isDark,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,

//       padding: const EdgeInsets.all(16),

//       decoration: BoxDecoration(
//         color: isDark ? Colors.grey[900] : Colors.white,

//         borderRadius: BorderRadius.circular(16),

//         border: Border.all(color: const Color(0xFF3F72C8).withOpacity(0.25)),
//       ),

//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,

//         children: [
//           Container(
//             width: 48,
//             height: 48,

//             decoration: BoxDecoration(
//               color: const Color(0xFFEEF2FB),
//               borderRadius: BorderRadius.circular(12),
//             ),

//             child: Icon(icon, color: const Color(0xFF3F72C8)),
//           ),

//           const SizedBox(width: 14),

//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,

//               children: [
//                 Text(
//                   title,

//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,

//                     color: isDark ? Colors.white : const Color(0xFF1A2A4A),
//                   ),
//                 ),

//                 const SizedBox(height: 6),

//                 Text(
//                   content,

//                   style: TextStyle(
//                     fontSize: 14,
//                     height: 1.5,

//                     color: isDark ? Colors.white70 : const Color(0xFF4A5A7A),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:career_advisor/screens/setting_screen.dart';

import '../main.dart';
import '../models/career_model.dart';

class CareerDetailsScreen extends StatelessWidget {
  final CareerModel career;

  const CareerDetailsScreen({super.key, required this.career});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              color: const Color(0xFF3F72C8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Career Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingScreen(
                            isDark: MyApp.of(context)!.isDarkMode,
                            onToggle: MyApp.of(context)!.toggleTheme,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.settings, color: Colors.white),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: isDark ? Colors.grey[900] : Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0xFF3F72C8).withOpacity(0.25),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEF2FB),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Icon(
                              Icons.work,
                              size: 38,
                              color: Color(0xFF3F72C8),
                            ),
                          ),

                          const SizedBox(width: 16),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  career.careerName,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: isDark
                                        ? Colors.white
                                        : const Color(0xFF1A2A4A),
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  career.shortExplanation,
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.5,
                                    color: isDark
                                        ? Colors.white70
                                        : const Color(0xFF4A5A7A),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    _InfoCard(
                      icon: Icons.menu_book_outlined,
                      title: "Required Skills",
                      content: career.requiredSkills,
                      isDark: isDark,
                    ),

                    const SizedBox(height: 14),

                    _InfoCard(
                      icon: Icons.school_outlined,
                      title: "Education Path",
                      content: career.educationPath,
                      isDark: isDark,
                    ),

                    const SizedBox(height: 14),

                    _InfoCard(
                      icon: Icons.attach_money,
                      title: "Salary Range",
                      content: career.salaryRange,
                      isDark: isDark,
                    ),

                    const SizedBox(height: 22),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: isDark ? Colors.grey[900] : Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0xFF3F72C8).withOpacity(0.25),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.route, color: Color(0xFF3F72C8)),
                              SizedBox(width: 10),
                              Text(
                                "Career Roadmap",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1A2A4A),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          ...career.roadmap.map((step) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 18),
                              child: Container(
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: isDark
                                      ? Colors.black26
                                      : const Color(0xFFF8FAFF),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      step.title,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: isDark
                                            ? Colors.white
                                            : const Color(0xFF1A2A4A),
                                      ),
                                    ),

                                    const SizedBox(height: 8),

                                    Text(
                                      step.desc,
                                      style: TextStyle(
                                        fontSize: 14,
                                        height: 1.6,
                                        color: isDark
                                            ? Colors.white70
                                            : const Color(0xFF4A5A7A),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final bool isDark;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.content,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[900] : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF3F72C8).withOpacity(0.25)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FB),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFF3F72C8)),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : const Color(0xFF1A2A4A),
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  content,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: isDark ? Colors.white70 : const Color(0xFF4A5A7A),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
