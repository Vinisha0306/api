class Followers {
  String fullName;
  String id;
  bool isPrivate;
  bool isVerified;
  String profilePicUrl;
  String username;

  Followers({
    required this.fullName,
    required this.id,
    required this.isPrivate,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
  });

  factory Followers.fromJson(Map<String, dynamic> json) => Followers(
        fullName: json["full_name"],
        id: json["id"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        profilePicUrl: json["profile_pic_url"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "id": id,
        "is_private": isPrivate,
        "is_verified": isVerified,
        "profile_pic_url": profilePicUrl,
        "username": username,
      };
}
