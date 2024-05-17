class Burger {
  int id;
  String name;
  List<Image> images;
  String desc;
  List<Ingredient> ingredients;
  double price;
  bool veg;

  Burger({
    required this.id,
    required this.name,
    required this.images,
    required this.desc,
    required this.ingredients,
    required this.price,
    required this.veg,
  });

  factory Burger.fromJson(Map<String, dynamic> json) => Burger(
        id: json["id"],
        name: json["name"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        desc: json["desc"],
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
        price: json["price"]?.toDouble(),
        veg: json["veg"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "desc": desc,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "price": price,
        "veg": veg,
      };
}

class Image {
  String? sm;
  String? lg;

  Image({
    this.sm,
    this.lg,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        sm: json["sm"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "sm": sm,
        "lg": lg,
      };
}

class Ingredient {
  int id;
  String name;
  String img;

  Ingredient({
    required this.id,
    required this.name,
    required this.img,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        id: json["id"],
        name: json["name"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
      };
}
