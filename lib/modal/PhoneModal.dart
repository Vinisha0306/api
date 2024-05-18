class Phone {
  int brandId;
  String brandName;
  String id;
  String phoneName;
  String imageUrl;
  String description;

  Phone({
    required this.brandId,
    required this.brandName,
    required this.id,
    required this.phoneName,
    required this.imageUrl,
    required this.description,
  });

  factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        brandId: json["brand_id"],
        brandName: json["brand_name"],
        id: json["id"],
        phoneName: json["phone_name"],
        imageUrl: json["image_url"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "brand_id": brandId,
        "brand_name": brandName,
        "id": id,
        "phone_name": phoneName,
        "image_url": imageUrl,
        "description": description,
      };
}
