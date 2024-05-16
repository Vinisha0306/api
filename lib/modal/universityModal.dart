class University {
  String country;
  List<String> webPages;
  String alphaTwoCode;
  List<String> domains;
  String stateProvince;
  String name;

  University({
    required this.country,
    required this.webPages,
    required this.alphaTwoCode,
    required this.domains,
    required this.stateProvince,
    required this.name,
  });

  factory University.fromJson(Map<String, dynamic> json) => University(
        country: json["country"],
        webPages: List<String>.from(json["web_pages"].map((x) => x)),
        alphaTwoCode: json["alpha_two_code"],
        domains: List<String>.from(json["domains"].map((x) => x)),
        stateProvince: json["state-province"] ?? "",
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "web_pages": List<dynamic>.from(webPages.map((x) => x)),
        "alpha_two_code": alphaTwoCode,
        "domains": List<dynamic>.from(domains.map((x) => x)),
        "state-province": stateProvince,
        "name": name,
      };
}
