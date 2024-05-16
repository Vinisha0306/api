class Youtube {
  int index;
  String type;
  Video video;

  Youtube({
    required this.index,
    required this.type,
    required this.video,
  });

  factory Youtube.fromJson(Map<String, dynamic> json) => Youtube(
        index: json["index"],
        type: json["type"],
        video: Video.fromJson(json["video"]),
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "type": type,
        "video": video.toJson(),
      };
}

class Video {
  Author author;
  bool isLiveNow;
  int lengthSeconds;
  List<Thumbnail> thumbnails;
  String title;
  String videoId;

  Video({
    required this.author,
    required this.isLiveNow,
    required this.lengthSeconds,
    required this.thumbnails,
    required this.title,
    required this.videoId,
  });

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        author: Author.fromJson(json["author"]),
        isLiveNow: json["isLiveNow"],
        lengthSeconds: json["lengthSeconds"],
        thumbnails: List<Thumbnail>.from(
            json["thumbnails"].map((x) => Thumbnail.fromJson(x))),
        title: json["title"],
        videoId: json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "author": author.toJson(),
        "isLiveNow": isLiveNow,
        "lengthSeconds": lengthSeconds,
        "thumbnails": List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "title": title,
        "videoId": videoId,
      };
}

class Author {
  String canonicalBaseUrl;
  String channelId;
  String title;

  Author({
    required this.canonicalBaseUrl,
    required this.channelId,
    required this.title,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        canonicalBaseUrl: json["canonicalBaseUrl"],
        channelId: json["channelId"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "canonicalBaseUrl": canonicalBaseUrl,
        "channelId": channelId,
        "title": title,
      };
}

class Thumbnail {
  int height;
  String url;
  int width;

  Thumbnail({
    required this.height,
    required this.url,
    required this.width,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        height: json["height"],
        url: json["url"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "url": url,
        "width": width,
      };
}
