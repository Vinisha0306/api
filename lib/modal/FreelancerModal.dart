class Freelancer {
  String projectTitle;
  String projectDescription;
  String projectLink;
  String projectTags;
  String endsIn;
  String projectPrice;
  String freelancersBids;
  String payment;

  Freelancer({
    required this.projectTitle,
    required this.projectDescription,
    required this.projectLink,
    required this.projectTags,
    required this.endsIn,
    required this.projectPrice,
    required this.freelancersBids,
    required this.payment,
  });

  factory Freelancer.fromJson(Map<String, dynamic> json) => Freelancer(
        projectTitle: json["project-title"],
        projectDescription: json["project-description"],
        projectLink: json["project-link"],
        projectTags: json["project-tags"],
        endsIn: json["ends in"],
        projectPrice: json["project-price"],
        freelancersBids: json["freelancers-bids"],
        payment: json["payment"],
      );

  Map<String, dynamic> toJson() => {
        "project-title": projectTitle,
        "project-description": projectDescription,
        "project-link": projectLink,
        "project-tags": projectTags,
        "ends in": endsIn,
        "project-price": projectPrice,
        "freelancers-bids": freelancersBids,
        "payment": payment,
      };
}
