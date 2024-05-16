class Language {
  String language;

  Language({
    required this.language,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        language: json["language"],
      );

  Map<String, dynamic> toJson() => {
        "language": language,
      };
}
