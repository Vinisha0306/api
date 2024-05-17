class Cake {
  String id;
  String title;
  String difficulty;
  String image;

  Cake({
    required this.id,
    required this.title,
    required this.difficulty,
    required this.image,
  });

  factory Cake.fromJson(Map<String, dynamic> json) => Cake(
        id: json["id"],
        title: json["title"],
        difficulty: json["difficulty"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "difficulty": difficulty,
        "image": image,
      };
}
