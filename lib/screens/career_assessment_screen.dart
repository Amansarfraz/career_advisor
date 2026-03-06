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
        "Exploring new apps or gadgets (Tech)",
        "Sketching or creating designs (Creative)",
        "Meeting and talking to new people (Social)",
        "Organizing data or checking records (Analytical)",
      ],
    },

    {
      "question": "What kind of problems do you enjoy solving the most?",
      "options": [
        "Logical and mathematical puzzles",
        "Fixing design or layout issues",
        "Resolving conflicts between people",
        "Creating business or financial plans",
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
    },

    {
      "question": "What is your greatest strength?",
      "options": [
        "I am a fast learner of new systems",
        "I have a very strong imagination",
        "I can explain complex things clearly",
        "I am highly organized and disciplined",
      ],
    },

    {
      "question": "What do you find easiest to do on a computer?",
      "options": [
        "Writing code or changing technical settings",
        "Editing pictures or videos",
        "Writing emails and making presentations",
        "Managing spreadsheets and files",
      ],
    },

    {
      "question": "How do you react in difficult situations?",
      "options": [
        "I stay calm and find a logical solution",
        "I think of a unique or creative way out",
        "I seek help and build a team to solve it",
        "I double-check all the facts and data",
      ],
    },

    {
      "question": "What would your dream workspace look like?",
      "options": [
        "A modern high-tech laboratory",
        "A creative studio or a colorful workspace",
        "A busy environment with lots of people",
        "A quiet and professional formal office",
      ],
    },

    {
      "question": "How do you prefer to work?",
      "options": [
        "Working alone with deep focus",
        "Collaborating within a team",
        "Leading and managing others",
        "Following set rules and instructions",
      ],
    },

    {
      "question": "What is most important to you in a career?",
      "options": [
        "Innovation (Creating something new)",
        "Freedom (Working on my own terms)",
        "Social Impact (Helping other people)",
        "High Salary and Job Stability",
      ],
    },

    {
      "question": "What is your ideal work schedule?",
      "options": [
        "Flexible hours (Working whenever I want)",
        "9 to 5 (Fixed and stable routine)",
        "Project-based (Work until the task is done)",
        "Outdoor work involving travel",
      ],
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
      appBar: AppBar(
        title: const Text("Career Assessment"),
        backgroundColor: const Color(0xff3F72C8),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Question ${currentQuestion + 1} of 10",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("${(progress * 100).toInt()}%"),
              ],
            ),

            const SizedBox(height: 10),

            LinearProgressIndicator(
              value: progress,
              borderRadius: BorderRadius.circular(10),
              minHeight: 8,
              backgroundColor: Colors.grey.shade300,
              color: Colors.blue,
            ),

            const SizedBox(height: 25),

            Text(
              "Question ${currentQuestion + 1}",
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 10),

            Text(
              questions[currentQuestion]["question"],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            ...List.generate(4, (index) {
              bool isSelected = selectedOption == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOption = index;
                  });
                },

                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),

                  padding: const EdgeInsets.all(14),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),

                    border: Border.all(color: Colors.blue),

                    color: isSelected ? Colors.blue.shade50 : Colors.white,
                  ),

                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          questions[currentQuestion]["options"][index],
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),

                      if (isSelected)
                        const Icon(Icons.check_box, color: Colors.blue),
                    ],
                  ),
                ),
              );
            }),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: nextQuestion,

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3F72C8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                child: const Text(
                  "Next Question",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
