class Yummly {
  bool promoted;
  String trackingId;
  Display display;
  Content content;
  String type;

  Yummly({
    required this.promoted,
    required this.trackingId,
    required this.display,
    required this.content,
    required this.type,
  });

  factory Yummly.fromJson(Map<String, dynamic> json) => Yummly(
        promoted: json["promoted"],
        trackingId: json["tracking-id"],
        display: Display.fromJson(json["display"]),
        content: Content.fromJson(json["content"]),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "promoted": promoted,
        "tracking-id": trackingId,
        "display": display.toJson(),
        "content": content.toJson(),
        "type": type,
      };
}

class Content {
  Content();

  factory Content.fromJson(Map<String, dynamic> json) => Content();

  Map<String, dynamic> toJson() => {};
}

class Display {
  String displayName;
  String iconImage;
  String categoryImage;
  String tag;

  Display({
    required this.displayName,
    required this.iconImage,
    required this.categoryImage,
    required this.tag,
  });

  factory Display.fromJson(Map<String, dynamic> json) => Display(
        displayName: json["displayName"],
        iconImage: json["iconImage"],
        categoryImage: json["categoryImage"],
        tag: json["tag"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName,
        "iconImage": iconImage,
        "categoryImage": categoryImage,
        "tag": tag,
      };
}
