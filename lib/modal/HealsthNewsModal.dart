class HealthNews {
  String title;
  String snippet;
  String publisher;
  String timestamp;
  String newsUrl;
  Images images;
  bool? hasSubnews;
  List<HealthNews>? subnews;

  HealthNews({
    required this.title,
    required this.snippet,
    required this.publisher,
    required this.timestamp,
    required this.newsUrl,
    required this.images,
    this.hasSubnews,
    this.subnews,
  });

  factory HealthNews.fromJson(Map<String, dynamic> json) => HealthNews(
        title: json["title"],
        snippet: json["snippet"],
        publisher: json["publisher"],
        timestamp: json["timestamp"],
        newsUrl: json["newsUrl"],
        images: Images.fromJson(json["images"] ?? {}),
        hasSubnews: json["hasSubnews"],
        subnews: json["subnews"] == null
            ? []
            : List<HealthNews>.from(
                json["subnews"]!.map((x) => HealthNews.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "snippet": snippet,
        "publisher": publisher,
        "timestamp": timestamp,
        "newsUrl": newsUrl,
        "images": images.toJson(),
        "hasSubnews": hasSubnews,
        "subnews": subnews == null
            ? []
            : List<dynamic>.from(subnews!.map((x) => x.toJson())),
      };
}

class Images {
  String thumbnail;
  String thumbnailProxied;

  Images({
    required this.thumbnail,
    required this.thumbnailProxied,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        thumbnail: json["thumbnail"] ?? "",
        thumbnailProxied: json["thumbnailProxied"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail,
        "thumbnailProxied": thumbnailProxied,
      };
}
