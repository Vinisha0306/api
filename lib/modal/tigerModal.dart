class Tiger {
  String name;
  Taxonomy taxonomy;
  List<String> locations;
  Characteristics characteristics;

  Tiger({
    required this.name,
    required this.taxonomy,
    required this.locations,
    required this.characteristics,
  });

  factory Tiger.fromJson(Map<String, dynamic> json) => Tiger(
        name: json["name"],
        taxonomy: Taxonomy.fromJson(json["taxonomy"]),
        locations: List<String>.from(json["locations"].map((x) => x)),
        characteristics:
            Characteristics.fromJson(json["characteristics"] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "taxonomy": taxonomy.toJson(),
        "locations": List<dynamic>.from(locations.map((x) => x)),
        "characteristics": characteristics.toJson(),
      };
}

class Characteristics {
  String mainPrey;
  String habitat;
  String predators;
  String diet;
  String averageLitterSize;
  String lifestyle;
  String favoriteFood;
  String type;
  String slogan;
  String color;
  String skinType;
  String topSpeed;
  String lifespan;
  String weight;
  String length;

  Characteristics({
    required this.mainPrey,
    required this.habitat,
    required this.predators,
    required this.diet,
    required this.averageLitterSize,
    required this.lifestyle,
    required this.favoriteFood,
    required this.type,
    required this.slogan,
    required this.color,
    required this.skinType,
    required this.topSpeed,
    required this.lifespan,
    required this.weight,
    required this.length,
  });

  factory Characteristics.fromJson(Map<String, dynamic> json) =>
      Characteristics(
        mainPrey: json["main_prey"] ?? "",
        habitat: json["habitat"] ?? "",
        predators: json["predators"] ?? "",
        diet: json["diet"] ?? "",
        averageLitterSize: json["average_litter_size"] ?? "",
        lifestyle: json["lifestyle"] ?? "",
        favoriteFood: json["favorite_food"] ?? "",
        type: json["type"] ?? "",
        slogan: json["slogan"] ?? "",
        color: json["color"] ?? "",
        skinType: json["skin_type"] ?? "",
        topSpeed: json["top_speed"] ?? "",
        lifespan: json["lifespan"] ?? "",
        weight: json["weight"] ?? "",
        length: json["length"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "main_prey": mainPrey,
        "habitat": habitat,
        "predators": predators,
        "diet": diet,
        "average_litter_size": averageLitterSize,
        "lifestyle": lifestyle,
        "favorite_food": favoriteFood,
        "type": type,
        "slogan": slogan,
        "color": color,
        "skin_type": skinType,
        "top_speed": topSpeed,
        "lifespan": lifespan,
        "weight": weight,
        "length": length,
      };
}

class Taxonomy {
  String kingdom;
  String phylum;
  String taxonomyClass;
  String order;
  String family;
  String genus;
  String scientificName;

  Taxonomy({
    required this.kingdom,
    required this.phylum,
    required this.taxonomyClass,
    required this.order,
    required this.family,
    required this.genus,
    required this.scientificName,
  });

  factory Taxonomy.fromJson(Map<String, dynamic> json) => Taxonomy(
        kingdom: json["kingdom"],
        phylum: json["phylum"],
        taxonomyClass: json["class"],
        order: json["order"],
        family: json["family"],
        genus: json["genus"] ?? "",
        scientificName: json["scientific_name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "kingdom": kingdom,
        "phylum": phylum,
        "class": taxonomyClass,
        "order": order,
        "family": family,
        "genus": genus,
        "scientific_name": scientificName,
      };
}
