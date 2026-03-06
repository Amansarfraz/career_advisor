import 'package:flutter/material.dart';

class CareerAssessmentScreen extends StatefulWidget {
  const CareerAssessmentScreen({super.key});

  @override
  State<CareerAssessmentScreen> createState() => _CareerAssessmentScreenState();
}

class _CareerAssessmentScreenState extends State<CareerAssessmentScreen> {
  int currentQuestion = 0;
  int? selectedOption;

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

  void nextQuestion() {
    if (selectedOption == null) return;

    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedOption = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentQuestion + 1) / questions.length;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// TOP HEADER
            Container(
              height: 80,
              width: 412,
              color: const Color(0xff3F72C8),
              child: Row(
                children: [
                  // const SizedBox(width: 10),

                  // IconButton(
                  //   icon: const Icon(Icons.arrow_back, color: Colors.white),
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  // ),
                  const SizedBox(width: 10),

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

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// QUESTION NUMBER
                    Text(
                      "Question ${currentQuestion + 1} of 10",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// PROGRESS BAR
                    SizedBox(
                      width: 380,
                      child: LinearProgressIndicator(
                        value: progress,
                        minHeight: 15,
                        borderRadius: BorderRadius.circular(20),
                        backgroundColor: Colors.grey.shade300,
                        color: const Color(0xff3F72C8),
                      ),
                    ),

                    const SizedBox(height: 30),

                    /// QUESTION TEXT
                    Text(
                      questions[currentQuestion]["question"],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 30),

                    /// OPTIONS
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
                          width: 380,
                          margin: const EdgeInsets.only(bottom: 14),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.blue),
                            color: isSelected
                                ? Colors.blue.shade50
                                : Colors.white,
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
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
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

                    const SizedBox(height: 70),

                    /// NEXT BUTTON
                    Center(
                      child: SizedBox(
                        width: 368,
                        height: 67,
                        child: ElevatedButton(
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
