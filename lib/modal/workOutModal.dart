class WorkOut {
  String muscles;
  String workOut;
  String intensityLevel;
  String beginnerSets;
  String intermediateSets;
  String expertSets;
  String equipment;
  String explaination;
  String longExplanation;
  String video;

  WorkOut({
    required this.muscles,
    required this.workOut,
    required this.intensityLevel,
    required this.beginnerSets,
    required this.intermediateSets,
    required this.expertSets,
    required this.equipment,
    required this.explaination,
    required this.longExplanation,
    required this.video,
  });

  factory WorkOut.fromJson(Map<String, dynamic> json) => WorkOut(
        muscles: json["Muscles"],
        workOut: json["WorkOut"],
        intensityLevel: json["Intensity_Level"],
        beginnerSets: json["Beginner Sets"],
        intermediateSets: json["Intermediate Sets"],
        expertSets: json["Expert Sets"],
        equipment: json["Equipment"],
        explaination: json["Explaination"],
        longExplanation: json["Long Explanation"],
        video: json["Video"],
      );

  Map<String, dynamic> toJson() => {
        "Muscles": muscles,
        "WorkOut": workOut,
        "Intensity_Level": intensityLevel,
        "Beginner Sets": beginnerSets,
        "Intermediate Sets": intermediateSets,
        "Expert Sets": expertSets,
        "Equipment": equipment,
        "Explaination": explaination,
        "Long Explanation": longExplanation,
        "Video": video,
      };
}
