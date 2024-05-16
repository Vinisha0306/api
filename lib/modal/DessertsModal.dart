class Desserts {
  int id;
  String name;
  List<Img> img;
  String desc;
  int price;

  Desserts({
    required this.id,
    required this.name,
    required this.img,
    required this.desc,
    required this.price,
  });

  factory Desserts.fromJson(Map<String, dynamic> json) => Desserts(
        id: json["id"],
        name: json["name"],
        img: List<Img>.from(json["img"].map((x) => Img.fromJson(x))),
        desc: json["desc"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": List<dynamic>.from(img.map((x) => x.toJson())),
        "desc": desc,
        "price": price,
      };
}

class Img {
  String? sm;
  String? lg;

  Img({
    this.sm,
    this.lg,
  });

  factory Img.fromJson(Map<String, dynamic> json) => Img(
        sm: json["sm"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "sm": sm,
        "lg": lg,
      };
}
