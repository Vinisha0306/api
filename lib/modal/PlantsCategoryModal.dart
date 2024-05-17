class PlantsCategory {
  String categories;
  String commonNameFr;
  String img;
  String family;
  String latinName;
  String otherNames;
  dynamic description;
  String id;
  String climat;

  PlantsCategory({
    required this.categories,
    required this.commonNameFr,
    required this.img,
    required this.family,
    required this.latinName,
    required this.otherNames,
    required this.description,
    required this.id,
    required this.climat,
  });

  factory PlantsCategory.fromJson(Map<String, dynamic> json) => PlantsCategory(
        categories: json["Categories"],
        commonNameFr: json["Common name (fr.)"] ?? "",
        img: json["Img"],
        family: json["Family"],
        latinName: json["Latin name"],
        otherNames: json["Other names"] ?? "",
        description: json["Description"],
        id: json["id"],
        climat: json["Climat"],
      );

  Map<String, dynamic> toJson() => {
        "Categories": categories,
        "Common name (fr.)": commonNameFr,
        "Img": img,
        "Family": family,
        "Latin name": latinName,
        "Other names": otherNames,
        "Description": description,
        "id": id,
        "Climat": climat,
      };
}
