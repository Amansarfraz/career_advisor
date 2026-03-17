// import 'package:flutter/material.dart';
// import 'career_recommendation_screen.dart';
// import 'get_started_screen.dart';

// class CareerAssessmentScreen extends StatefulWidget {
//   const CareerAssessmentScreen({super.key});

//   @override
//   State<CareerAssessmentScreen> createState() => _CareerAssessmentScreenState();
// }

// class _CareerAssessmentScreenState extends State<CareerAssessmentScreen> {
//   int currentQuestion = 0;
//   int? selectedOption;

//   final List<int?> userAnswers = List.filled(10, null);

//   final List<Map<String, dynamic>> questions = [
//     {
//       "question": "What do you enjoy doing in your free time?",
//       "options": [
//         "Exploring new apps or gadgets",
//         "Sketching or creating designs",
//         "Meeting and talking to new people",
//         "Organizing data or checking records",
//       ],
//       "icons": [Icons.devices, Icons.brush, Icons.people, Icons.analytics],
//     },
//     {
//       "question": "What kind of problems do you enjoy solving the most?",
//       "options": [
//         "Logical and mathematical puzzles",
//         "Fixing design or layout issues",
//         "Resolving conflicts between people",
//         "Creating business plans",
//       ],
//       "icons": [
//         Icons.calculate,
//         Icons.design_services,
//         Icons.groups,
//         Icons.business_center,
//       ],
//     },
//     {
//       "question": "If you had to read a book, what would the topic be?",
//       "options": [
//         "Future Technology & Innovation",
//         "Art, Culture, and History",
//         "Psychology and Human Behavior",
//         "Business Success Stories",
//       ],
//       "icons": [
//         Icons.computer,
//         Icons.palette,
//         Icons.psychology,
//         Icons.trending_up,
//       ],
//     },
//     {
//       "question": "What is your greatest strength?",
//       "options": [
//         "Fast learner of new systems",
//         "Strong imagination",
//         "Explaining complex things",
//         "Highly organized",
//       ],
//       "icons": [
//         Icons.speed,
//         Icons.lightbulb,
//         Icons.record_voice_over,
//         Icons.checklist,
//       ],
//     },
//     {
//       "question": "What do you find easiest to do on a computer?",
//       "options": [
//         "Writing code",
//         "Editing pictures",
//         "Writing emails",
//         "Managing spreadsheets",
//       ],
//       "icons": [Icons.code, Icons.photo, Icons.email, Icons.table_chart],
//     },
//     {
//       "question": "How do you react in difficult situations?",
//       "options": [
//         "Logical solution",
//         "Creative idea",
//         "Team solution",
//         "Check all data",
//       ],
//       "icons": [
//         Icons.psychology_alt,
//         Icons.auto_awesome,
//         Icons.groups_2,
//         Icons.fact_check,
//       ],
//     },
//     {
//       "question": "What would your dream workspace look like?",
//       "options": [
//         "High tech lab",
//         "Creative studio",
//         "Busy office",
//         "Quiet office",
//       ],
//       "icons": [
//         Icons.memory,
//         Icons.color_lens,
//         Icons.business,
//         Icons.meeting_room,
//       ],
//     },
//     {
//       "question": "How do you prefer to work?",
//       "options": [
//         "Work alone",
//         "Team collaboration",
//         "Lead others",
//         "Follow rules",
//       ],
//       "icons": [Icons.person, Icons.group, Icons.leaderboard, Icons.rule],
//     },
//     {
//       "question": "What is most important in career?",
//       "options": ["Innovation", "Freedom", "Helping people", "High salary"],
//       "icons": [
//         Icons.auto_graph,
//         Icons.flight_takeoff,
//         Icons.volunteer_activism,
//         Icons.attach_money,
//       ],
//     },
//     {
//       "question": "What is your ideal work schedule?",
//       "options": [
//         "Flexible hours",
//         "9 to 5 routine",
//         "Project based",
//         "Outdoor travel work",
//       ],
//       "icons": [Icons.schedule, Icons.work, Icons.task, Icons.travel_explore],
//     },
//   ];

//   Map<String, dynamic> calculateCareer() {
//     Map<String, int> scores = {'tech': 0, 'design': 0, 'social': 0, 'data': 0};

//     for (int i = 0; i < userAnswers.length; i++) {
//       int? ans = userAnswers[i];
//       if (ans == null) continue;
//       if (ans == 0) scores['tech'] = scores['tech']! + 1;
//       if (ans == 1) scores['design'] = scores['design']! + 1;
//       if (ans == 2) scores['social'] = scores['social']! + 1;
//       if (ans == 3) scores['data'] = scores['data']! + 1;
//     }

//     String topCategory = scores.entries
//         .reduce((a, b) => a.value >= b.value ? a : b)
//         .key;

//     int topScore = scores[topCategory]!;
//     int totalQuestions = questions.length;

//     int matchPercent = 60 + ((topScore / totalQuestions) * 37).round();
//     matchPercent = matchPercent.clamp(60, 97);

//     final Map<String, Map<String, String>> careerMap = {
//       'tech': {
//         'name': 'Software Engineer',
//         'explanation':
//             'You love technology, logical thinking, and building things.',
//       },
//       'design': {
//         'name': 'UI/UX Designer',
//         'explanation':
//             'Your creative mind and visual imagination make design perfect.',
//       },
//       'social': {
//         'name': 'HR Manager / Counselor',
//         'explanation':
//             'You enjoy helping people and understanding human behavior.',
//       },
//       'data': {
//         'name': 'Data / Business Analyst',
//         'explanation':
//             'You enjoy working with numbers, patterns, and data analysis.',
//       },
//     };

//     return {
//       'careerName': careerMap[topCategory]!['name']!,
//       'explanation': careerMap[topCategory]!['explanation']!,
//       'matchPercent': matchPercent,
//     };
//   }

//   void nextQuestion() {
//     if (selectedOption == null) return;

//     userAnswers[currentQuestion] = selectedOption;

//     if (currentQuestion < questions.length - 1) {
//       setState(() {
//         currentQuestion++;
//         selectedOption = null;
//       });
//     } else {
//       final result = calculateCareer();

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => CareerRecommendationScreen(
//             matchPercentage: result['matchPercent'],
//             careerName: result['careerName'],
//             shortExplanation: result['explanation'],
//           ),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     double progress = (currentQuestion + 1) / questions.length;
//     int percent = ((currentQuestion + 1) * 100 ~/ questions.length);

//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 80,
//               width: double.infinity,
//               color: const Color(0xff3F72C8),
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned(
//                     left: 10,
//                     child: IconButton(
//                       icon: const Icon(
//                         Icons.arrow_back,
//                         color: Colors.white,
//                         size: 28,
//                       ),
//                       onPressed: () {
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const GetStartedScreen(),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   const Text(
//                     "Career Assessment",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Question ${currentQuestion + 1} of 10",
//                         style: Theme.of(context).textTheme.titleLarge,
//                       ),

//                       const SizedBox(height: 10),

//                       Text(
//                         "$percent%",
//                         style: const TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff3F72C8),
//                         ),
//                       ),

//                       const SizedBox(height: 8),

//                       LinearProgressIndicator(
//                         value: progress,
//                         minHeight: 15,
//                         borderRadius: BorderRadius.circular(20),
//                         backgroundColor: Colors.grey.shade300,
//                         color: const Color(0xff3F72C8),
//                       ),

//                       const SizedBox(height: 30),

//                       Text(
//                         questions[currentQuestion]["question"],
//                         style: Theme.of(context).textTheme.headlineSmall,
//                       ),

//                       const SizedBox(height: 30),

//                       ...List.generate(4, (index) {
//                         bool isSelected = selectedOption == index;

//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedOption = index;
//                             });
//                           },
//                           child: Container(
//                             height: 70,
//                             margin: const EdgeInsets.only(bottom: 14),
//                             padding: const EdgeInsets.symmetric(horizontal: 15),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),
//                               border: Border.all(color: Colors.blue),
//                               color: isSelected
//                                   ? Colors.blue.withOpacity(0.15)
//                                   : Theme.of(context).cardColor,
//                             ),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   questions[currentQuestion]["icons"][index],
//                                   color: const Color(0xff3F72C8),
//                                 ),
//                                 const SizedBox(width: 12),
//                                 Expanded(
//                                   child: Text(
//                                     questions[currentQuestion]["options"][index],
//                                     style: Theme.of(
//                                       context,
//                                     ).textTheme.bodyLarge,
//                                   ),
//                                 ),
//                                 if (isSelected)
//                                   const Icon(
//                                     Icons.check_circle,
//                                     color: Color(0xff3F72C8),
//                                   ),
//                               ],
//                             ),
//                           ),
//                         );
//                       }),

//                       const SizedBox(height: 30),

//                       Center(
//                         child: SizedBox(
//                           width: 368,
//                           height: 67,
//                           child: ElevatedButton(
//                             onPressed: nextQuestion,
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: const Color(0xff3F72C8),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                             ),
//                             child: const Text(
//                               "Next Question",
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'career_recommendation_screen.dart';
import 'get_started_screen.dart';
import 'package:http/http.dart' as http;

class CareerAssessmentScreen extends StatefulWidget {
  const CareerAssessmentScreen({super.key});

  @override
  State<CareerAssessmentScreen> createState() => _CareerAssessmentScreenState();
}

class _CareerAssessmentScreenState extends State<CareerAssessmentScreen> {
  int currentQuestion = 0;
  int? selectedOption;
  bool isLoading = false; // For API call indicator

  final List<int?> userAnswers = List.filled(10, null);

  final List<Map<String, dynamic>> questions = [
    {
      "question": "What do you enjoy doing in your free time?",
      "options": [
        "Exploring new apps or gadgets",
        "Sketching or creating designs",
        "Meeting and talking to new people",
        "Organizing data or checking records",
      ],
      "icons": [Icons.devices, Icons.brush, Icons.people, Icons.analytics],
    },
    {
      "question": "What kind of problems do you enjoy solving the most?",
      "options": [
        "Logical and mathematical puzzles",
        "Fixing design or layout issues",
        "Resolving conflicts between people",
        "Creating business plans",
      ],
      "icons": [
        Icons.calculate,
        Icons.design_services,
        Icons.groups,
        Icons.business_center,
      ],
    },
    {
      "question": "If you had to read a book, what would the topic be?",
      "options": [
        "Future Technology & Innovation",
        "Art, Culture, and History",
        "Psychology and Human Behavior",
        "Business Success Stories",
      ],
      "icons": [
        Icons.computer,
        Icons.palette,
        Icons.psychology,
        Icons.trending_up,
      ],
    },
    {
      "question": "What is your greatest strength?",
      "options": [
        "Fast learner of new systems",
        "Strong imagination",
        "Explaining complex things",
        "Highly organized",
      ],
      "icons": [
        Icons.speed,
        Icons.lightbulb,
        Icons.record_voice_over,
        Icons.checklist,
      ],
    },
    {
      "question": "What do you find easiest to do on a computer?",
      "options": [
        "Writing code",
        "Editing pictures",
        "Writing emails",
        "Managing spreadsheets",
      ],
      "icons": [Icons.code, Icons.photo, Icons.email, Icons.table_chart],
    },
    {
      "question": "How do you react in difficult situations?",
      "options": [
        "Logical solution",
        "Creative idea",
        "Team solution",
        "Check all data",
      ],
      "icons": [
        Icons.psychology_alt,
        Icons.auto_awesome,
        Icons.groups_2,
        Icons.fact_check,
      ],
    },
    {
      "question": "What would your dream workspace look like?",
      "options": [
        "High tech lab",
        "Creative studio",
        "Busy office",
        "Quiet office",
      ],
      "icons": [
        Icons.memory,
        Icons.color_lens,
        Icons.business,
        Icons.meeting_room,
      ],
    },
    {
      "question": "How do you prefer to work?",
      "options": [
        "Work alone",
        "Team collaboration",
        "Lead others",
        "Follow rules",
      ],
      "icons": [Icons.person, Icons.group, Icons.leaderboard, Icons.rule],
    },
    {
      "question": "What is most important in career?",
      "options": ["Innovation", "Freedom", "Helping people", "High salary"],
      "icons": [
        Icons.auto_graph,
        Icons.flight_takeoff,
        Icons.volunteer_activism,
        Icons.attach_money,
      ],
    },
    {
      "question": "What is your ideal work schedule?",
      "options": [
        "Flexible hours",
        "9 to 5 routine",
        "Project based",
        "Outdoor travel work",
      ],
      "icons": [Icons.schedule, Icons.work, Icons.task, Icons.travel_explore],
    },
  ];

  // -----------------------------
  // API Call for Career Assessment
  // -----------------------------
  Future<Map<String, dynamic>> getCareerFromAPI(List<int?> answers) async {
    final response = await http.post(
      Uri.parse(
        "http://127.0.0.1:8000/career-assessment",
      ), // Replace with your backend URL
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"answers": answers}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to get career result");
    }
  }

  // -----------------------------
  // Next Question
  // -----------------------------
  void nextQuestion() async {
    if (selectedOption == null) return;

    userAnswers[currentQuestion] = selectedOption;

    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedOption = null;
      });
    } else {
      // -----------------------------
      // API Call instead of local calculation
      // -----------------------------
      setState(() {
        isLoading = true;
      });

      try {
        final result = await getCareerFromAPI(userAnswers);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CareerRecommendationScreen(
              matchPercentage: result['matchPercent'],
              careerName: result['careerName'],
              shortExplanation: result['explanation'],
            ),
          ),
        );
      } catch (e) {
        setState(() {
          isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error fetching career result: $e")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentQuestion + 1) / questions.length;
    int percent = ((currentQuestion + 1) * 100 ~/ questions.length);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              height: 80,
              width: double.infinity,
              color: const Color(0xff3F72C8),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 10,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GetStartedScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const Text(
                    "Career Assessment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Question ${currentQuestion + 1} of 10",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "$percent%",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3F72C8),
                        ),
                      ),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: progress,
                        minHeight: 15,
                        borderRadius: BorderRadius.circular(20),
                        backgroundColor: Colors.grey.shade300,
                        color: const Color(0xff3F72C8),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        questions[currentQuestion]["question"],
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 30),

                      // Options
                      ...List.generate(4, (index) {
                        bool isSelected = selectedOption == index;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOption = index;
                            });
                          },
                          child: Container(
                            height: 70,
                            margin: const EdgeInsets.only(bottom: 14),
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: Colors.blue),
                              color: isSelected
                                  ? Colors.blue.withOpacity(0.15)
                                  : Theme.of(context).cardColor,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  questions[currentQuestion]["icons"][index],
                                  color: const Color(0xff3F72C8),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    questions[currentQuestion]["options"][index],
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge,
                                  ),
                                ),
                                if (isSelected)
                                  const Icon(
                                    Icons.check_circle,
                                    color: Color(0xff3F72C8),
                                  ),
                              ],
                            ),
                          ),
                        );
                      }),

                      const SizedBox(height: 30),

                      // Next Button / Loading Indicator
                      Center(
                        child: SizedBox(
                          width: 368,
                          height: 67,
                          child: isLoading
                              ? const Center(child: CircularProgressIndicator())
                              : ElevatedButton(
                                  onPressed: nextQuestion,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff3F72C8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                  child: const Text(
                                    "Next Question",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
