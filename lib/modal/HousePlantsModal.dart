class HousePlants {
  String category;

  HousePlants({
    required this.category,
  });

  factory HousePlants.fromJson(Map<String, dynamic> json) => HousePlants(
        category: json["Category"],
      );

  Map<String, dynamic> toJson() => {
        "Category": category,
      };
}
