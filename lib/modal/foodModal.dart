class Food {
  String shopName;
  String shopId;
  String shoplogo;
  String subdomain;
  String shopType;
  String mobileno;
  String deliveryMethod;
  String cuisine;
  String city;
  String address;
  String longitude;
  String latitude;
  String distanceInKm;
  String cuisineImage;
  String currency;
  String offerList;
  String shopStatus;
  String promoCode;
  String totalItem;
  String paymentGateway;
  String planPurchase;

  Food({
    required this.shopName,
    required this.shopId,
    required this.shoplogo,
    required this.subdomain,
    required this.shopType,
    required this.mobileno,
    required this.deliveryMethod,
    required this.cuisine,
    required this.city,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.distanceInKm,
    required this.cuisineImage,
    required this.currency,
    required this.offerList,
    required this.shopStatus,
    required this.promoCode,
    required this.totalItem,
    required this.paymentGateway,
    required this.planPurchase,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        shopName: json["shop_name"],
        shopId: json["shop_id"],
        shoplogo: json["shoplogo"],
        subdomain: json["subdomain"],
        shopType: json["shop_type"],
        mobileno: json["mobileno"],
        deliveryMethod: json["delivery_method"],
        cuisine: json["cuisine"],
        city: json["city"],
        address: json["address"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        distanceInKm: json["distance_in_km"],
        cuisineImage: json["cuisine_image"],
        currency: json["currency"],
        offerList: json["offer_list"],
        shopStatus: json["shop_status"],
        promoCode: json["promo_code"],
        totalItem: json["total_item"],
        paymentGateway: json["payment_gateway"],
        planPurchase: json["plan_purchase"],
      );

  Map<String, dynamic> toJson() => {
        "shop_name": shopName,
        "shop_id": shopId,
        "shoplogo": shoplogo,
        "subdomain": subdomain,
        "shop_type": shopType,
        "mobileno": mobileno,
        "delivery_method": deliveryMethod,
        "cuisine": cuisine,
        "city": city,
        "address": address,
        "longitude": longitude,
        "latitude": latitude,
        "distance_in_km": distanceInKm,
        "cuisine_image": cuisineImage,
        "currency": currency,
        "offer_list": offerList,
        "shop_status": shopStatus,
        "promo_code": promoCode,
        "total_item": totalItem,
        "payment_gateway": paymentGateway,
        "plan_purchase": planPurchase,
      };
}
