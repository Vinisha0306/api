class Roblox {
  int id;
  String name;
  dynamic description;
  Creator creator;
  Creator rootPlace;
  DateTime created;
  DateTime updated;
  int placeVisits;

  Roblox({
    required this.id,
    required this.name,
    required this.description,
    required this.creator,
    required this.rootPlace,
    required this.created,
    required this.updated,
    required this.placeVisits,
  });

  factory Roblox.fromJson(Map<String, dynamic> json) => Roblox(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        creator: Creator.fromJson(json["creator"]),
        rootPlace: Creator.fromJson(json["rootPlace"]),
        created: DateTime.parse(json["created"]),
        updated: DateTime.parse(json["updated"]),
        placeVisits: json["placeVisits"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "creator": creator.toJson(),
        "rootPlace": rootPlace.toJson(),
        "created": created.toIso8601String(),
        "updated": updated.toIso8601String(),
        "placeVisits": placeVisits,
      };
}

class Creator {
  int id;
  String type;

  Creator({
    required this.id,
    required this.type,
  });

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        id: json["id"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
      };
}
