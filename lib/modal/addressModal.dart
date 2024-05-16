class Location {
  Address address;
  int bathrooms;
  int bedrooms;
  String brokerageName;
  bool hasOpenHouse;
  bool hasVrModel;
  String homeMarketingStatus;
  String homeMarketingType;
  String homeType;
  double latitude;
  String listingUrl;
  double longitude;
  String openHouses;
  int price;
  String priceCurrency;
  String primaryPhotoUrl;
  String status;
  int zpid;

  Location({
    required this.address,
    required this.bathrooms,
    required this.bedrooms,
    required this.brokerageName,
    required this.hasOpenHouse,
    required this.hasVrModel,
    required this.homeMarketingStatus,
    required this.homeMarketingType,
    required this.homeType,
    required this.latitude,
    required this.listingUrl,
    required this.longitude,
    required this.openHouses,
    required this.price,
    required this.priceCurrency,
    required this.primaryPhotoUrl,
    required this.status,
    required this.zpid,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        address: Address.fromJson(json["address"]),
        bathrooms: json["bathrooms"],
        bedrooms: json["bedrooms"],
        brokerageName: json["brokerage_name"],
        hasOpenHouse: json["hasOpenHouse"],
        hasVrModel: json["has_vr_model"],
        homeMarketingStatus: json["home_marketing_status"],
        homeMarketingType: json["home_marketing_type"],
        homeType: json["home_type"],
        latitude: json["latitude"]?.toDouble(),
        listingUrl: json["listing_url"],
        longitude: json["longitude"]?.toDouble(),
        openHouses: json["openHouses"],
        price: json["price"],
        priceCurrency: json["price_currency"],
        primaryPhotoUrl: json["primary_photo_url"],
        status: json["status"],
        zpid: json["zpid"],
      );

  Map<String, dynamic> toJson() => {
        "address": address.toJson(),
        "bathrooms": bathrooms,
        "bedrooms": bedrooms,
        "brokerage_name": brokerageName,
        "hasOpenHouse": hasOpenHouse,
        "has_vr_model": hasVrModel,
        "home_marketing_status": homeMarketingStatus,
        "home_marketing_type": homeMarketingType,
        "home_type": homeType,
        "latitude": latitude,
        "listing_url": listingUrl,
        "longitude": longitude,
        "openHouses": openHouses,
        "price": price,
        "price_currency": priceCurrency,
        "primary_photo_url": primaryPhotoUrl,
        "status": status,
        "zpid": zpid,
      };
}

class Address {
  String city;
  String line1;
  String line2;
  String postalCode;
  String stateOrProvince;

  Address({
    required this.city,
    required this.line1,
    required this.line2,
    required this.postalCode,
    required this.stateOrProvince,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
        line1: json["line1"],
        line2: json["line2"],
        postalCode: json["postalCode"],
        stateOrProvince: json["stateOrProvince"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "line1": line1,
        "line2": line2,
        "postalCode": postalCode,
        "stateOrProvince": stateOrProvince,
      };
}
