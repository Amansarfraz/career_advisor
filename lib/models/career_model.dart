// class Career {
//   final String careerName;
//   final String description;
//   final String averageSalary;
//   final List<String> requiredSkills;

//   final int? matchPercent; // optional, used in assessment result
//   final String? explanation; // optional, used in assessment result

//   Career({
//     required this.careerName,
//     required this.description,
//     required this.averageSalary,
//     required this.requiredSkills,
//     this.matchPercent,
//     this.explanation,
//   });

//   // From JSON
//   factory Career.fromJson(Map<String, dynamic> json) {
//     return Career(
//       careerName: json['careerName'] ?? '',
//       description: json['description'] ?? '',
//       averageSalary: json['averageSalary'] ?? '',
//       requiredSkills: List<String>.from(json['requiredSkills'] ?? []),
//       matchPercent: json['matchPercent'],
//       explanation: json['explanation'],
//     );
//   }

//   // To JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'careerName': careerName,
//       'description': description,
//       'averageSalary': averageSalary,
//       'requiredSkills': requiredSkills,
//       'matchPercent': matchPercent,
//       'explanation': explanation,
//     };
//   }
// }
class CareerModel {
  final String name;

  final String description;

  final String requiredSkills;

  final String educationPath;

  final String salaryRange;

  final List<Map<String, String>> roadmap;

  CareerModel({
    required this.name,
    required this.description,
    required this.requiredSkills,
    required this.educationPath,
    required this.salaryRange,
    required this.roadmap,
  });

  factory CareerModel.fromJson(Map<String, dynamic> json) {
    return CareerModel(
      name: json["careerName"] ?? "",

      description: json["description"] ?? "",

      requiredSkills: (json["skills"] as List).join(", "),

      educationPath: json["educationPath"] ?? "",

      salaryRange: json["salary"] ?? "",

      roadmap: List<Map<String, String>>.from(
        (json["roadmap"] ?? []).map(
          (item) => {
            "title": item["title"].toString(),
            "desc": item["desc"].toString(),
          },
        ),
      ),
    );
  }
}
