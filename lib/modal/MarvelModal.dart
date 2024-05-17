class Marvel {
  int id;
  String name;
  String description;
  List<String> powers;
  List<Appearance> appearances;
  String affiliation;
  String firstAppearance;
  String creator;

  Marvel({
    required this.id,
    required this.name,
    required this.description,
    required this.powers,
    required this.appearances,
    required this.affiliation,
    required this.firstAppearance,
    required this.creator,
  });

  factory Marvel.fromJson(Map<String, dynamic> json) => Marvel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        powers: List<String>.from(json["powers"].map((x) => x)),
        appearances: List<Appearance>.from(
            json["appearances"].map((x) => Appearance.fromJson(x))),
        affiliation: json["affiliation"] ?? "",
        firstAppearance: json["firstAppearance"] ?? "",
        creator: json["creator"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "powers": List<dynamic>.from(powers.map((x) => x)),
        "appearances": List<dynamic>.from(appearances.map((x) => x.toJson())),
        "affiliation": affiliation,
        "firstAppearance": firstAppearance,
        "creator": creator,
      };
}

class Appearance {
  String movie;
  int year;

  Appearance({
    required this.movie,
    required this.year,
  });

  factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        movie: json["movie"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "movie": movie,
        "year": year,
      };
}
