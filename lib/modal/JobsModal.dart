class Jobs {
  String id;
  String title;
  String company;
  String description;
  String image;
  String location;
  String employmentType;
  String datePosted;
  String salaryRange;
  List<JobProvider> jobProviders;

  Jobs({
    required this.id,
    required this.title,
    required this.company,
    required this.description,
    required this.image,
    required this.location,
    required this.employmentType,
    required this.datePosted,
    required this.salaryRange,
    required this.jobProviders,
  });

  factory Jobs.fromJson(Map<String, dynamic> json) => Jobs(
        id: json["id"],
        title: json["title"],
        company: json["company"],
        description: json["description"],
        image: json["image"],
        location: json["location"],
        employmentType: json["employmentType"],
        datePosted: json["datePosted"],
        salaryRange: json["salaryRange"],
        jobProviders: List<JobProvider>.from(
            json["jobProviders"].map((x) => JobProvider.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "company": company,
        "description": description,
        "image": image,
        "location": location,
        "employmentType": employmentType,
        "datePosted": datePosted,
        "salaryRange": salaryRange,
        "jobProviders": List<dynamic>.from(jobProviders.map((x) => x.toJson())),
      };
}

class JobProvider {
  String jobProvider;
  String url;

  JobProvider({
    required this.jobProvider,
    required this.url,
  });

  factory JobProvider.fromJson(Map<String, dynamic> json) => JobProvider(
        jobProvider: json["jobProvider"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "jobProvider": jobProvider,
        "url": url,
      };
}
