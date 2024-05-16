class Car {
  int id;
  int makeId;
  String name;
  Make make;

  Car({
    required this.id,
    required this.makeId,
    required this.name,
    required this.make,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        id: json["id"],
        makeId: json["make_id"],
        name: json["name"],
        make: Make.fromJson(json["make"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "make_id": makeId,
        "name": name,
        "make": make.toJson(),
      };
}

class Make {
  int id;
  String name;

  Make({
    required this.id,
    required this.name,
  });

  factory Make.fromJson(Map<String, dynamic> json) => Make(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
