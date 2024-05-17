class Courses {
  int id;
  String name;

  Courses({
    required this.id,
    required this.name,
  });

  factory Courses.fromJson(Map<String, dynamic> json) => Courses(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
