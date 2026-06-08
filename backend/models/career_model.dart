// // class CareerModel {
// //   final String careerName;
// //   final String requiredSkills;
// //   final String educationPath;
// //   final String salaryRange;
// //   final List<RoadmapStep> roadmap;

// //   CareerModel({
// //     required this.careerName,
// //     required this.requiredSkills,
// //     required this.educationPath,
// //     required this.salaryRange,
// //     required this.roadmap,
// //   });

// //   factory CareerModel.fromJson(Map<String, dynamic> json) {
// //     return CareerModel(
// //       careerName: json['careerName'],
// //       requiredSkills: json['requiredSkills'],
// //       educationPath: json['educationPath'],
// //       salaryRange: json['salaryRange'],

// //       roadmap: (json['roadmap'] as List)
// //           .map((e) => RoadmapStep.fromJson(e))
// //           .toList(),
// //     );
// //   }
// // }

// // class RoadmapStep {
// //   final String title;
// //   final String desc;

// //   RoadmapStep({required this.title, required this.desc});

// //   factory RoadmapStep.fromJson(Map<String, dynamic> json) {
// //     return RoadmapStep(title: json['title'], desc: json['desc']);
// //   }
// // }

// class CareerModel {
//   final String careerName;
//   final String shortExplanation;
//   final String requiredSkills;
//   final String educationPath;
//   final String salaryRange;
//   final List<RoadmapStep> roadmap;

//   CareerModel({
//     required this.careerName,
//     required this.shortExplanation,
//     required this.requiredSkills,
//     required this.educationPath,
//     required this.salaryRange,
//     required this.roadmap,
//   });

//   factory CareerModel.fromJson(Map<String, dynamic> json) {
//     return CareerModel(
//       careerName: json['careerName'],
//       shortExplanation: json['shortExplanation'],
//       requiredSkills: json['requiredSkills'],
//       educationPath: json['educationPath'],
//       salaryRange: json['salaryRange'],

//       roadmap: (json['roadmap'] as List)
//           .map((e) => RoadmapStep.fromJson(e))
//           .toList(),
//     );
//   }
// }

// class RoadmapStep {
//   final String title;
//   final String desc;

//   RoadmapStep({required this.title, required this.desc});

//   factory RoadmapStep.fromJson(Map<String, dynamic> json) {
//     return RoadmapStep(title: json['title'], desc: json['desc']);
//   }
// }
class CareerModel {
  final String careerName;
  final String shortExplanation;
  final String requiredSkills;
  final String educationPath;
  final String salaryRange;
  final List<RoadmapStep> roadmap;

  CareerModel({
    required this.careerName,
    required this.shortExplanation,
    required this.requiredSkills,
    required this.educationPath,
    required this.salaryRange,
    required this.roadmap,
  });

  factory CareerModel.fromJson(Map<String, dynamic> json) {
    return CareerModel(
      careerName: json["careerName"],
      shortExplanation: json["shortExplanation"],
      requiredSkills: json["requiredSkills"],
      educationPath: json["educationPath"],
      salaryRange: json["salaryRange"],
      roadmap: (json["roadmap"] as List)
          .map((e) => RoadmapStep.fromJson(e))
          .toList(),
    );
  }
}

class RoadmapStep {
  final String title;
  final String desc;

  RoadmapStep({required this.title, required this.desc});

  factory RoadmapStep.fromJson(Map<String, dynamic> json) {
    return RoadmapStep(title: json["title"], desc: json["desc"]);
  }
}
