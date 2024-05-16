class Cricket {
  String date;
  List<Series> series;

  Cricket({
    required this.date,
    required this.series,
  });

  factory Cricket.fromJson(Map<String, dynamic> json) => Cricket(
        date: json["date"],
        series:
            List<Series>.from(json["series"].map((x) => Series.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "series": List<dynamic>.from(series.map((x) => x.toJson())),
      };
}

class Series {
  int id;
  String name;
  String startDt;
  String endDt;

  Series({
    required this.id,
    required this.name,
    required this.startDt,
    required this.endDt,
  });

  factory Series.fromJson(Map<String, dynamic> json) => Series(
        id: json["id"],
        name: json["name"],
        startDt: json["startDt"],
        endDt: json["endDt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "startDt": startDt,
        "endDt": endDt,
      };
}
