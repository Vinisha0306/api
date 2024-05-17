class JapaneseLanguage {
  String japanese;
  String romaji;
  List<Example> examples;

  JapaneseLanguage({
    required this.japanese,
    required this.romaji,
    required this.examples,
  });

  factory JapaneseLanguage.fromJson(Map<String, dynamic> json) =>
      JapaneseLanguage(
        japanese: json["japanese"],
        romaji: json["romaji"],
        examples: List<Example>.from(
            json["examples"].map((x) => Example.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "japanese": japanese,
        "romaji": romaji,
        "examples": List<dynamic>.from(examples.map((x) => x.toJson())),
      };
}

class Example {
  String japanese;
  String romaji;
  String meaning;

  Example({
    required this.japanese,
    required this.romaji,
    required this.meaning,
  });

  factory Example.fromJson(Map<String, dynamic> json) => Example(
        japanese: json["japanese"],
        romaji: json["romaji"],
        meaning: json["meaning"],
      );

  Map<String, dynamic> toJson() => {
        "japanese": japanese,
        "romaji": romaji,
        "meaning": meaning,
      };
}
