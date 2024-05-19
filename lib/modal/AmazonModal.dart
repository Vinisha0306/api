class Amazon {
  int totalProducts;
  String country;
  String domain;
  List<Products> products;

  Amazon({
    required this.totalProducts,
    required this.country,
    required this.domain,
    required this.products,
  });

  factory Amazon.fromJson(Map<String, dynamic> json) => Amazon(
        totalProducts: json["total_products"],
        country: json["country"],
        domain: json["domain"],
        products: List<Products>.from(
            json["products"].map((x) => Products.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total_products": totalProducts,
        "country": country,
        "domain": domain,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Products {
  String asin;
  String productTitle;
  String productPrice;
  String? productOriginalPrice;
  Currency currency;
  String productStarRating;
  int productNumRatings;
  String productUrl;
  String productPhoto;
  int productNumOffers;
  String productMinimumOfferPrice;
  bool isBestSeller;
  bool isAmazonChoice;
  bool isPrime;
  bool climatePledgeFriendly;
  String salesVolume;
  String delivery;

  Products({
    required this.asin,
    required this.productTitle,
    required this.productPrice,
    required this.productOriginalPrice,
    required this.currency,
    required this.productStarRating,
    required this.productNumRatings,
    required this.productUrl,
    required this.productPhoto,
    required this.productNumOffers,
    required this.productMinimumOfferPrice,
    required this.isBestSeller,
    required this.isAmazonChoice,
    required this.isPrime,
    required this.climatePledgeFriendly,
    required this.salesVolume,
    required this.delivery,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        asin: json["asin"],
        productTitle: json["product_title"],
        productPrice: json["product_price"],
        productOriginalPrice: json["product_original_price"],
        currency: currencyValues.map[json["currency"]]!,
        productStarRating: json["product_star_rating"],
        productNumRatings: json["product_num_ratings"],
        productUrl: json["product_url"],
        productPhoto: json["product_photo"],
        productNumOffers: json["product_num_offers"],
        productMinimumOfferPrice: json["product_minimum_offer_price"],
        isBestSeller: json["is_best_seller"],
        isAmazonChoice: json["is_amazon_choice"],
        isPrime: json["is_prime"],
        climatePledgeFriendly: json["climate_pledge_friendly"],
        salesVolume: json["sales_volume"],
        delivery: json["delivery"],
      );

  Map<String, dynamic> toJson() => {
        "asin": asin,
        "product_title": productTitle,
        "product_price": productPrice,
        "product_original_price": productOriginalPrice,
        "currency": currencyValues.reverse[currency],
        "product_star_rating": productStarRating,
        "product_num_ratings": productNumRatings,
        "product_url": productUrl,
        "product_photo": productPhoto,
        "product_num_offers": productNumOffers,
        "product_minimum_offer_price": productMinimumOfferPrice,
        "is_best_seller": isBestSeller,
        "is_amazon_choice": isAmazonChoice,
        "is_prime": isPrime,
        "climate_pledge_friendly": climatePledgeFriendly,
        "sales_volume": salesVolume,
        "delivery": delivery,
      };
}

enum Currency { USD }

final currencyValues = EnumValues({"USD": Currency.USD});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
