class LinkedIn {
  String text;
  int totalReactionCount;
  int likeCount;
  int appreciationCount;
  int empathyCount;
  int interestCount;
  int praiseCount;
  int funnyCount;
  int commentsCount;
  int repostsCount;
  String postUrl;
  String postedAt;
  String postedDate;
  int postedDateTimestamp;
  String urn;
  Author author;
  Article company;
  Article article;

  LinkedIn({
    required this.text,
    required this.totalReactionCount,
    required this.likeCount,
    required this.appreciationCount,
    required this.empathyCount,
    required this.interestCount,
    required this.praiseCount,
    required this.funnyCount,
    required this.commentsCount,
    required this.repostsCount,
    required this.postUrl,
    required this.postedAt,
    required this.postedDate,
    required this.postedDateTimestamp,
    required this.urn,
    required this.author,
    required this.company,
    required this.article,
  });

  factory LinkedIn.fromJson(Map<String, dynamic> json) => LinkedIn(
        text: json["text"],
        totalReactionCount: json["totalReactionCount"],
        likeCount: json["likeCount"],
        appreciationCount: json["appreciationCount"],
        empathyCount: json["empathyCount"],
        interestCount: json["InterestCount"] ?? 0,
        praiseCount: json["praiseCount"],
        funnyCount: json["funnyCount"] ?? 0,
        commentsCount: json["commentsCount"],
        repostsCount: json["repostsCount"],
        postUrl: json["postUrl"],
        postedAt: json["postedAt"],
        postedDate: json["postedDate"],
        postedDateTimestamp: json["postedDateTimestamp"],
        urn: json["urn"],
        author: Author.fromJson(json["author"]),
        company: Article.fromJson(json["company"]),
        article: Article.fromJson(json["article"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "totalReactionCount": totalReactionCount,
        "likeCount": likeCount,
        "appreciationCount": appreciationCount,
        "empathyCount": empathyCount,
        "InterestCount": interestCount,
        "praiseCount": praiseCount,
        "funnyCount": funnyCount,
        "commentsCount": commentsCount,
        "repostsCount": repostsCount,
        "postUrl": postUrl,
        "postedAt": postedAt,
        "postedDate": postedDate,
        "postedDateTimestamp": postedDateTimestamp,
        "urn": urn,
        "author": author.toJson(),
        "company": company.toJson(),
        "article": article.toJson(),
      };
}

class Article {
  Article();

  factory Article.fromJson(Map<String, dynamic> json) => Article();

  Map<String, dynamic> toJson() => {};
}

class Author {
  String firstName;
  String lastName;
  String username;
  String url;

  Author({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.url,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "url": url,
      };
}
