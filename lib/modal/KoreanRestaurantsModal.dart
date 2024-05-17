class KoreanRestaurants {
  int id;
  String slug;
  String date;
  String restaurantname;
  String desc;
  String location;
  String locationkr;
  List<Operatinghr> operatinghrs;
  String contact;
  String deliveryoption;
  String dine;
  String takeaway;
  String rating;
  String price;
  String mainImage;
  String imageAlt;
  String gmap;
  List<ImageGallery> imageGallery;

  KoreanRestaurants({
    required this.id,
    required this.slug,
    required this.date,
    required this.restaurantname,
    required this.desc,
    required this.location,
    required this.locationkr,
    required this.operatinghrs,
    required this.contact,
    required this.deliveryoption,
    required this.dine,
    required this.takeaway,
    required this.rating,
    required this.price,
    required this.mainImage,
    required this.imageAlt,
    required this.gmap,
    required this.imageGallery,
  });

  factory KoreanRestaurants.fromJson(Map<String, dynamic> json) =>
      KoreanRestaurants(
        id: json["id"],
        slug: json["slug"],
        date: json["date"],
        restaurantname: json["restaurantname"],
        desc: json["desc"],
        location: json["location"],
        locationkr: json["locationkr"],
        operatinghrs: List<Operatinghr>.from(
            json["operatinghrs"].map((x) => Operatinghr.fromJson(x))),
        contact: json["contact"],
        deliveryoption: json["deliveryoption"],
        dine: json["dine"],
        takeaway: json["takeaway"],
        rating: json["rating"],
        price: json["price"],
        mainImage: json["main_image"],
        imageAlt: json["image_alt"],
        gmap: json["gmap"],
        imageGallery: List<ImageGallery>.from(
            json["image_gallery"].map((x) => ImageGallery.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "date": date,
        "restaurantname": restaurantname,
        "desc": desc,
        "location": location,
        "locationkr": locationkr,
        "operatinghrs": List<dynamic>.from(operatinghrs.map((x) => x.toJson())),
        "contact": contact,
        "deliveryoption": deliveryoption,
        "dine": dine,
        "takeaway": takeaway,
        "rating": rating,
        "price": price,
        "main_image": mainImage,
        "image_alt": imageAlt,
        "gmap": gmap,
        "image_gallery":
            List<dynamic>.from(imageGallery.map((x) => x.toJson())),
      };
}

class ImageGallery {
  String img;

  ImageGallery({
    required this.img,
  });

  factory ImageGallery.fromJson(Map<String, dynamic> json) => ImageGallery(
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "img": img,
      };
}

class Operatinghr {
  String day;
  String time;

  Operatinghr({
    required this.day,
    required this.time,
  });

  factory Operatinghr.fromJson(Map<String, dynamic> json) => Operatinghr(
        day: json["day"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "time": time,
      };
}
