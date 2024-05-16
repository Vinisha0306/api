class Sport {
  String lastName;
  String firstName;
  String playerId;
  String courseId;
  String status;
  bool isAmateur;

  Sport({
    required this.lastName,
    required this.firstName,
    required this.playerId,
    required this.courseId,
    required this.status,
    required this.isAmateur,
  });

  factory Sport.fromJson(Map<String, dynamic> json) => Sport(
        lastName: json["lastName"],
        firstName: json["firstName"],
        playerId: json["playerId"],
        courseId: json["courseId"],
        status: json["status"],
        isAmateur: json["isAmateur"],
      );

  Map<String, dynamic> toJson() => {
        "lastName": lastName,
        "firstName": firstName,
        "playerId": playerId,
        "courseId": courseId,
        "status": status,
        "isAmateur": isAmateur,
      };
}
