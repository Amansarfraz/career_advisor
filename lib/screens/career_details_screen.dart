// import 'package:career_advisor/screens/setting_screen.dart';
// import 'package:flutter/material.dart';
// import 'career_recommendation_screen.dart';
// import '../main.dart'; // make sure the path points correctly to your main.dart

// // ─── HARDCODED CAREER DATA ─────────────────────────────────────────────────────
// class _CareerData {
//   final String name;
//   final IconData icon;
//   final String requiredSkills;
//   final String educationPath;
//   final String salaryRange;
//   final List<Map<String, String>> roadmap;

//   const _CareerData({
//     required this.name,
//     required this.icon,
//     required this.requiredSkills,
//     required this.educationPath,
//     required this.salaryRange,
//     required this.roadmap,
//   });
// }

// final Map<String, _CareerData> _careerDatabase = {
//   'Software Engineer': _CareerData(
//     name: 'Software Engineer',
//     icon: Icons.code,
//     requiredSkills: 'Java, Python, SQL, Data Structures, OOP, Problem Solving',
//     educationPath:
//         'Computer Science Degree or Software Engineering Degree or Bootcamp',
//     salaryRange: '\$70,000 to \$120,000+',
//     roadmap: [
//       {
//         'title': '1. Fundamentals',
//         'desc': 'Programming basics, DSA, OOP, and core CS concepts.',
//       },
//       {
//         'title': '2. Projects & Practice',
//         'desc': 'Build real-world projects and improve problem-solving skills.',
//       },
//       {
//         'title': '3. Specialization & Growth',
//         'desc': 'Choose a domain and continuously upgrade your skills.',
//       },
//       {
//         'title': '4. Internship & Job Hunt',
//         'desc':
//             'Apply for internships, build your GitHub portfolio, and contribute to open-source projects.',
//       },
//       {
//         'title': '5. Senior & Leadership',
//         'desc':
//             'Lead development teams, mentor juniors, and move into architecture or management roles.',
//       },
//     ],
//   ),

//   'UI/UX Designer': _CareerData(
//     name: 'UI/UX Designer',
//     icon: Icons.brush,
//     requiredSkills:
//         'Figma, Adobe XD, Prototyping, User Research, Typography, Color Theory',
//     educationPath:
//         'Graphic Design Degree or HCI Degree or Online Courses + Portfolio',
//     salaryRange: '\$55,000 to \$100,000+',
//     roadmap: [
//       {
//         'title': '1. Design Basics',
//         'desc':
//             'Learn color theory, typography, layout principles, and visual hierarchy.',
//       },
//       {
//         'title': '2. Master Design Tools',
//         'desc':
//             'Get proficient in Figma and Adobe XD for wireframing and prototyping.',
//       },
//       {
//         'title': '3. User Research',
//         'desc':
//             'Study user behavior, conduct interviews, and create personas and journey maps.',
//       },
//       {
//         'title': '4. Portfolio Building',
//         'desc':
//             'Design 3–5 real case studies showing your design thinking and problem-solving process.',
//       },
//       {
//         'title': '5. Specialize & Grow',
//         'desc':
//             'Focus on Mobile UX, Design Systems, or Motion Design to stand out in the market.',
//       },
//     ],
//   ),

//   'HR Manager / Counselor': _CareerData(
//     name: 'HR Manager / Counselor',
//     icon: Icons.people,
//     requiredSkills:
//         'Communication, Conflict Resolution, Empathy, Recruitment, Labor Law, Leadership',
//     educationPath:
//         'Human Resource Management Degree or Psychology Degree or MBA with HR Specialization',
//     salaryRange: '\$50,000 to \$90,000+',
//     roadmap: [
//       {
//         'title': '1. People Skills',
//         'desc':
//             'Develop strong communication, empathy, and active listening skills.',
//       },
//       {
//         'title': '2. HR Fundamentals',
//         'desc':
//             'Learn recruitment, onboarding, payroll, and performance management basics.',
//       },
//       {
//         'title': '3. Labor Laws & Compliance',
//         'desc':
//             'Understand employment laws, workplace rights, and organizational policies.',
//       },
//       {
//         'title': '4. HR Tools & Software',
//         'desc':
//             'Get proficient in HRMS tools like BambooHR, SAP SuccessFactors, or Workday.',
//       },
//       {
//         'title': '5. Leadership & Strategy',
//         'desc':
//             'Move into strategic HR roles — talent management, culture building, and C-suite advisory.',
//       },
//     ],
//   ),

//   'Data / Business Analyst': _CareerData(
//     name: 'Data / Business Analyst',
//     icon: Icons.analytics,
//     requiredSkills:
//         'Excel, SQL, Python, Power BI, Statistics, Critical Thinking, Data Visualization',
//     educationPath:
//         'Statistics / Mathematics Degree or Computer Science Degree or Business Administration + Analytics Courses',
//     salaryRange: '\$60,000 to \$110,000+',
//     roadmap: [
//       {
//         'title': '1. Data Foundations',
//         'desc':
//             'Learn Excel, SQL, and basic statistics for collecting and organizing data.',
//       },
//       {
//         'title': '2. Data Visualization',
//         'desc':
//             'Master Power BI or Tableau to build dashboards and present insights clearly.',
//       },
//       {
//         'title': '3. Programming for Data',
//         'desc':
//             'Learn Python (Pandas, NumPy) for data cleaning, analysis, and automation.',
//       },
//       {
//         'title': '4. Business Acumen',
//         'desc':
//             'Understand business processes, KPIs, and how data drives decision-making.',
//       },
//       {
//         'title': '5. Advanced Analytics',
//         'desc':
//             'Explore machine learning basics, predictive modeling, and strategic reporting.',
//       },
//     ],
//   ),
// };

// // ─── CAREER DETAILS SCREEN ─────────────────────────────────────────────────────
// class CareerDetailsScreen extends StatelessWidget {
//   final String careerName;

//   const CareerDetailsScreen({super.key, required this.careerName});

//   @override
//   Widget build(BuildContext context) {
//     final career = _careerDatabase[careerName];

//     if (career == null) {
//       return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: const Color(0xFF3F72C8),
//           title: const Text(
//             "Career Details",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           iconTheme: const IconThemeData(color: Colors.white),
//         ),
//         body: const Center(child: Text("Career details not found.")),
//       );
//     }

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             // ─── HEADER ─────────────────────────────
//             Container(
//               width: double.infinity,
//               height: 80,
//               color: const Color(0xFF3F72C8),
//               padding: const EdgeInsets.symmetric(horizontal: 4),
//               child: Row(
//                 children: [
//                   /// BACK ARROW
//                   IconButton(
//                     icon: const Icon(
//                       Icons.arrow_back,
//                       color: Colors.white,
//                       size: 26,
//                     ),
//                     onPressed: () {
//                       IconButton(
//                         icon: const Icon(
//                           Icons.arrow_back,
//                           color: Colors.white,
//                           size: 26,
//                         ),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       );
//                     },
//                   ),
//                   // // ── HEADER ──────────────────────────────────────────────
//                   // Container(
//                   //   width: double.infinity,
//                   //   height: 80,
//                   //   color: const Color(0xFF3F72C8),
//                   //   padding: const EdgeInsets.symmetric(horizontal: 4),
//                   //   child: Row(
//                   //     children: [
//                   //       // Back button
//                   //       IconButton(
//                   //         icon: const Icon(
//                   //           Icons.arrow_back,
//                   //           color: Colors.white,
//                   //           size: 26,
//                   //         ),
//                   //         onPressed: () => Navigator.pop(context),
//                   //       ),

//                   //       // Title - centered
//                   const Expanded(
//                     child: Text(
//                       "Career Details",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),

//                   // Settings icon
//                   IconButton(
//                     icon: const Icon(
//                       Icons.settings,
//                       color: Colors.white,
//                       size: 26,
//                     ),

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

//                       // Navigator.pushReplacement(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) =>
//                       //         const SettingScreen(), // 👈 apni screen ka naam
//                       //   ),
//                       // ); // TODO: settings action
//                     },
//                   ),
//                 ],
//               ),
//             ),

//             // ── SCROLLABLE BODY ──────────────────────────────────────
//             Expanded(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // ── Career Title Row ──
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 58,
//                           height: 58,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFEEF2FB),
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                           child: Icon(
//                             career.icon,
//                             color: const Color(0xFF3F72C8),
//                             size: 32,
//                           ),
//                         ),
//                         const SizedBox(width: 14),
//                         Expanded(
//                           child: Text(
//                             "${career.name}\nOverview",
//                             style: const TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFF1a2a4a),
//                               height: 1.35,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),

//                     const SizedBox(height: 18),

//                     // ── Required Skills ──
//                     _InfoCard(
//                       icon: Icons.menu_book_outlined,
//                       title: "Required Skills:",
//                       content: career.requiredSkills,
//                     ),

//                     const SizedBox(height: 12),

//                     // ── Education Path ──
//                     _InfoCard(
//                       icon: Icons.school_outlined,
//                       title: "Education Path:",
//                       content: career.educationPath,
//                     ),

//                     const SizedBox(height: 12),

//                     // ── Salary Range ──
//                     _InfoCard(
//                       icon: Icons.attach_money,
//                       title: "Salary Range:",
//                       content: career.salaryRange,
//                     ),

//                     const SizedBox(height: 20),

//                     // ── Step-by-step Roadmap ──
//                     Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(14),
//                         border: Border.all(
//                           color: const Color(0xFF3F72C8).withOpacity(0.3),
//                           width: 1.5,
//                         ),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Roadmap header
//                           Row(
//                             children: const [
//                               Icon(
//                                 Icons.route,
//                                 color: Color(0xFF3F72C8),
//                                 size: 26,
//                               ),
//                               SizedBox(width: 10),
//                               Text(
//                                 "Step-by-step Roadmap:",
//                                 style: TextStyle(
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xFF1a2a4a),
//                                 ),
//                               ),
//                             ],
//                           ),

//                           const SizedBox(height: 16),

//                           // Roadmap steps
//                           ...career.roadmap.map(
//                             (step) => Padding(
//                               padding: const EdgeInsets.only(bottom: 16),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     step['title']!,
//                                     style: const TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xFF1a2a4a),
//                                     ),
//                                   ),
//                                   const SizedBox(height: 4),
//                                   Text(
//                                     step['desc']!,
//                                     style: const TextStyle(
//                                       fontSize: 14,
//                                       color: Color(0xFF3a4a6a),
//                                       height: 1.55,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
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

// // ─── REUSABLE INFO CARD ────────────────────────────────────────────────────────
// class _InfoCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String content;

//   const _InfoCard({
//     required this.icon,
//     required this.title,
//     required this.content,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         border: Border.all(
//           color: const Color(0xFF3F72C8).withOpacity(0.3),
//           width: 1.5,
//         ),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 42,
//             height: 42,
//             decoration: BoxDecoration(
//               color: const Color(0xFFEEF2FB),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Icon(icon, color: const Color(0xFF3F72C8), size: 22),
//           ),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF1a2a4a),
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   content,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: Color(0xFF3a4a6a),
//                     height: 1.5,
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
import 'package:career_advisor/screens/career_recommendation_screen.dart';
import 'package:flutter/material.dart';
import 'package:career_advisor/screens/setting_screen.dart';
import '../main.dart'; // Make sure this path points correctly to your main.dart

// ─── HARDCODED CAREER DATA ─────────────────────────────────────────────
class _CareerData {
  final String name;
  final IconData icon;
  final String requiredSkills;
  final String educationPath;
  final String salaryRange;
  final List<Map<String, String>> roadmap;

  const _CareerData({
    required this.name,
    required this.icon,
    required this.requiredSkills,
    required this.educationPath,
    required this.salaryRange,
    required this.roadmap,
  });
}

final Map<String, _CareerData> _careerDatabase = {
  'Software Engineer': _CareerData(
    name: 'Software Engineer',
    icon: Icons.code,
    requiredSkills: 'Java, Python, SQL, Data Structures, OOP, Problem Solving',
    educationPath: 'Computer Science Degree or Bootcamp',
    salaryRange: '\$70,000 to \$120,000+',
    roadmap: [
      {
        'title': '1. Fundamentals',
        'desc': 'Programming basics, DSA, OOP, and core CS concepts.',
      },
      {
        'title': '2. Projects & Practice',
        'desc': 'Build real-world projects and improve problem-solving skills.',
      },
      {
        'title': '3. Specialization & Growth',
        'desc': 'Choose a domain and continuously upgrade your skills.',
      },
      {
        'title': '4. Internship & Job Hunt',
        'desc':
            'Apply for internships, build GitHub portfolio, contribute to open-source projects.',
      },
      {
        'title': '5. Senior & Leadership',
        'desc':
            'Lead teams, mentor juniors, move into architecture or management roles.',
      },
    ],
  ),
  'UI/UX Designer': _CareerData(
    name: 'UI/UX Designer',
    icon: Icons.brush,
    requiredSkills:
        'Figma, Adobe XD, Prototyping, User Research, Typography, Color Theory',
    educationPath: 'Graphic Design Degree or Online Courses + Portfolio',
    salaryRange: '\$55,000 to \$100,000+',
    roadmap: [
      {
        'title': '1. Design Basics',
        'desc':
            'Learn color theory, typography, layout principles, and visual hierarchy.',
      },
      {
        'title': '2. Master Design Tools',
        'desc':
            'Get proficient in Figma and Adobe XD for wireframing and prototyping.',
      },
      {
        'title': '3. User Research',
        'desc':
            'Study user behavior, conduct interviews, and create personas and journey maps.',
      },
      {
        'title': '4. Portfolio Building',
        'desc':
            'Design 3–5 real case studies showing your design thinking and problem-solving process.',
      },
      {
        'title': '5. Specialize & Grow',
        'desc':
            'Focus on Mobile UX, Design Systems, or Motion Design to stand out in the market.',
      },
    ],
  ),
  'HR Manager / Counselor': _CareerData(
    name: 'HR Manager / Counselor',
    icon: Icons.people,
    requiredSkills:
        'Communication, Conflict Resolution, Empathy, Recruitment, Labor Law, Leadership',
    educationPath:
        'Human Resource Management Degree or Psychology Degree or MBA with HR Specialization',
    salaryRange: '\$50,000 to \$90,000+',
    roadmap: [
      {
        'title': '1. People Skills',
        'desc':
            'Develop strong communication, empathy, and active listening skills.',
      },
      {
        'title': '2. HR Fundamentals',
        'desc':
            'Learn recruitment, onboarding, payroll, and performance management basics.',
      },
      {
        'title': '3. Labor Laws & Compliance',
        'desc':
            'Understand employment laws, workplace rights, and organizational policies.',
      },
      {
        'title': '4. HR Tools & Software',
        'desc':
            'Get proficient in HRMS tools like BambooHR, SAP SuccessFactors, or Workday.',
      },
      {
        'title': '5. Leadership & Strategy',
        'desc':
            'Move into strategic HR roles — talent management, culture building, and C-suite advisory.',
      },
    ],
  ),
  'Data / Business Analyst': _CareerData(
    name: 'Data / Business Analyst',
    icon: Icons.analytics,
    requiredSkills:
        'Excel, SQL, Python, Power BI, Statistics, Critical Thinking, Data Visualization',
    educationPath:
        'Statistics / Mathematics Degree or CS Degree or Business + Analytics Courses',
    salaryRange: '\$60,000 to \$110,000+',
    roadmap: [
      {
        'title': '1. Data Foundations',
        'desc':
            'Learn Excel, SQL, and basic statistics for collecting and organizing data.',
      },
      {
        'title': '2. Data Visualization',
        'desc':
            'Master Power BI or Tableau to build dashboards and present insights clearly.',
      },
      {
        'title': '3. Programming for Data',
        'desc':
            'Learn Python (Pandas, NumPy) for data cleaning, analysis, and automation.',
      },
      {
        'title': '4. Business Acumen',
        'desc':
            'Understand business processes, KPIs, and how data drives decision-making.',
      },
      {
        'title': '5. Advanced Analytics',
        'desc':
            'Explore machine learning basics, predictive modeling, and strategic reporting.',
      },
    ],
  ),
};

// ─── CAREER DETAILS SCREEN ─────────────────────────────────────────────
class CareerDetailsScreen extends StatelessWidget {
  final String careerName;
  const CareerDetailsScreen({super.key, required this.careerName});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final career = _careerDatabase[careerName];

    if (career == null) {
      return Scaffold(
        backgroundColor: isDark ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF3F72C8),
          title: const Text(
            "Career Details",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Text(
            "Career details not found.",
            style: TextStyle(color: isDark ? Colors.white : Colors.black),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            /// HEADER
            Container(
              height: 80,
              width: double.infinity,
              color: const Color(0xFF3F72C8),
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 26,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CareerRecommendationScreen(
                            matchPercentage:
                                75, // apna dynamic % ya static value
                            careerName:
                                careerName, // ye CareerDetailsScreen ka careerName variable
                            shortExplanation:
                                "This career matches your profile.", // short explanation
                          ),
                        ),
                      );
                    },
                  ),
                  // IconButton(
                  //   icon: const Icon(
                  //     Icons.arrow_back,
                  //     color: Colors.white,
                  //     size: 26,
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pop(
                  //       context,
                  //     ); // ye bas previous screen par le jata hai
                  //   },
                  // ),
                  // IconButton(
                  //   icon: const Icon(
                  //     Icons.arrow_back,
                  //     color: Colors.white,
                  //     size: 26,
                  //   ),
                  //   onPressed: () => Navigator.pop(context),
                  // ),
                  const Expanded(
                    child: Text(
                      "Career Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 26,
                    ),
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
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title Row
                    Row(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            color: isDark
                                ? Colors.grey[800]
                                : const Color(0xFFEEF2FB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Icon(
                            career.icon,
                            color: const Color(0xFF3F72C8),
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Text(
                            "${career.name}\nOverview",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: isDark
                                  ? Colors.white
                                  : const Color(0xFF1a2a4a),
                              height: 1.35,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),

                    _InfoCard(
                      icon: Icons.menu_book_outlined,
                      title: "Required Skills:",
                      content: career.requiredSkills,
                      isDark: isDark,
                    ),
                    const SizedBox(height: 12),
                    _InfoCard(
                      icon: Icons.school_outlined,
                      title: "Education Path:",
                      content: career.educationPath,
                      isDark: isDark,
                    ),
                    const SizedBox(height: 12),
                    _InfoCard(
                      icon: Icons.attach_money,
                      title: "Salary Range:",
                      content: career.salaryRange,
                      isDark: isDark,
                    ),
                    const SizedBox(height: 20),

                    // Roadmap
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isDark ? Colors.grey[900] : Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color(0xFF3F72C8).withOpacity(0.3),
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.route,
                                color: Color(0xFF3F72C8),
                                size: 26,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Step-by-step Roadmap:",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1a2a4a),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          ...career.roadmap.map(
                            (step) => Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    step['title']!,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: isDark
                                          ? Colors.white
                                          : const Color(0xFF1a2a4a),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    step['desc']!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: isDark
                                          ? Colors.white70
                                          : const Color(0xFF3a4a6a),
                                      height: 1.55,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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

// ─── INFO CARD ─────────────────────────────────────────────────────────────
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
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[900] : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFF3F72C8).withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: isDark ? Colors.grey[800] : const Color(0xFFEEF2FB),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: const Color(0xFF3F72C8), size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : const Color(0xFF1a2a4a),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 14,
                    color: isDark ? Colors.white70 : const Color(0xFF3a4a6a),
                    height: 1.5,
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
