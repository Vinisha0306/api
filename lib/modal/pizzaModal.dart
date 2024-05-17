class Pizza {
  int id;
  String name;
  bool veg;
  int price;
  String description;
  int quantity;
  String img;
  List<Sizeandcrust> sizeandcrust;

  Pizza({
    required this.id,
    required this.name,
    required this.veg,
    required this.price,
    required this.description,
    required this.quantity,
    required this.img,
    required this.sizeandcrust,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) => Pizza(
        id: json["id"],
        name: json["name"],
        veg: json["veg"],
        price: json["price"],
        description: json["description"],
        quantity: json["quantity"],
        img: json["img"],
        sizeandcrust: List<Sizeandcrust>.from(
            json["sizeandcrust"].map((x) => Sizeandcrust.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "veg": veg,
        "price": price,
        "description": description,
        "quantity": quantity,
        "img": img,
        "sizeandcrust": List<dynamic>.from(sizeandcrust.map((x) => x.toJson())),
      };
}

class Sizeandcrust {
  List<Medium> mediumPan;
  List<Medium> mediumstuffedcrustcheesemax;
  List<Medium> mediumstuffedcrustvegkebab;

  Sizeandcrust({
    required this.mediumPan,
    required this.mediumstuffedcrustcheesemax,
    required this.mediumstuffedcrustvegkebab,
  });

  factory Sizeandcrust.fromJson(Map<String, dynamic> json) => Sizeandcrust(
        mediumPan: List<Medium>.from(
            (json["mediumPan"] ?? <Medium>{}).map((x) => Medium.fromJson(x))),
        mediumstuffedcrustcheesemax: List<Medium>.from(
            (json["mediumstuffedcrustcheesemax"] ?? <Medium>{})
                .map((x) => Medium.fromJson(x))),
        mediumstuffedcrustvegkebab: List<Medium>.from(
            (json["mediumstuffedcrustvegkebab"] ?? <Medium>{})
                .map((x) => Medium.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mediumPan": List<dynamic>.from(mediumPan.map((x) => x.toJson())),
        "mediumstuffedcrustcheesemax": List<dynamic>.from(
            mediumstuffedcrustcheesemax.map((x) => x.toJson())),
        "mediumstuffedcrustvegkebab": List<dynamic>.from(
            mediumstuffedcrustvegkebab.map((x) => x.toJson())),
      };
}

class Medium {
  int price;

  Medium({
    required this.price,
  });

  factory Medium.fromJson(Map<String, dynamic> json) => Medium(
        price: json["price"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "price": price,
      };
}
