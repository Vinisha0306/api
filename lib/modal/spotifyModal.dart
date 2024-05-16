class Spotify {
  Data data;

  Spotify({
    required this.data,
  });

  factory Spotify.fromJson(Map<String, dynamic> json) => Spotify(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  String uri;
  String name;
  Artists artists;
  CoverArt coverArt;
  Date date;

  Data({
    required this.uri,
    required this.name,
    required this.artists,
    required this.coverArt,
    required this.date,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        uri: json["uri"],
        name: json["name"],
        artists: Artists.fromJson(json["artists"]),
        coverArt: CoverArt.fromJson(json["coverArt"]),
        date: Date.fromJson(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "uri": uri,
        "name": name,
        "artists": artists.toJson(),
        "coverArt": coverArt.toJson(),
        "date": date.toJson(),
      };
}

class Artists {
  List<Item> items;

  Artists({
    required this.items,
  });

  factory Artists.fromJson(Map<String, dynamic> json) => Artists(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  String uri;
  Profile profile;

  Item({
    required this.uri,
    required this.profile,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        uri: json["uri"],
        profile: Profile.fromJson(json["profile"]),
      );

  Map<String, dynamic> toJson() => {
        "uri": uri,
        "profile": profile.toJson(),
      };
}

class Profile {
  String name;

  Profile({
    required this.name,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class CoverArt {
  List<Source> sources;

  CoverArt({
    required this.sources,
  });

  factory CoverArt.fromJson(Map<String, dynamic> json) => CoverArt(
        sources:
            List<Source>.from(json["sources"].map((x) => Source.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "sources": List<dynamic>.from(sources.map((x) => x.toJson())),
      };
}

class Source {
  String url;
  int width;
  int height;

  Source({
    required this.url,
    required this.width,
    required this.height,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}

class Date {
  int year;

  Date({
    required this.year,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
      };
}
