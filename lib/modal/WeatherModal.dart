class Weather {
  String date;
  String dateWithTimezone;
  int freshSnow;
  dynamic snowHeight;
  WeatherClass weather;
  Prec prec;
  int sunHours;
  dynamic rainHours;
  SnowLine temperature;
  Wind wind;
  SnowLine windchill;
  SnowLine snowLine;
  Astronomy astronomy;

  Weather({
    required this.date,
    required this.dateWithTimezone,
    required this.freshSnow,
    required this.snowHeight,
    required this.weather,
    required this.prec,
    required this.sunHours,
    required this.rainHours,
    required this.temperature,
    required this.wind,
    required this.windchill,
    required this.snowLine,
    required this.astronomy,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        date: json["date"],
        dateWithTimezone: json["dateWithTimezone"],
        freshSnow: json["freshSnow"],
        snowHeight: json["snowHeight"],
        weather: WeatherClass.fromJson(json["weather"]),
        prec: Prec.fromJson(json["prec"]),
        sunHours: json["sunHours"],
        rainHours: json["rainHours"],
        temperature: SnowLine.fromJson(json["temperature"]),
        wind: Wind.fromJson(json["wind"]),
        windchill: SnowLine.fromJson(json["windchill"]),
        snowLine: SnowLine.fromJson(json["snowLine"]),
        astronomy: Astronomy.fromJson(json["astronomy"]),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "dateWithTimezone": dateWithTimezone,
        "freshSnow": freshSnow,
        "snowHeight": snowHeight,
        "weather": weather.toJson(),
        "prec": prec.toJson(),
        "sunHours": sunHours,
        "rainHours": rainHours,
        "temperature": temperature.toJson(),
        "wind": wind.toJson(),
        "windchill": windchill.toJson(),
        "snowLine": snowLine.toJson(),
        "astronomy": astronomy.toJson(),
      };
}

class Astronomy {
  String dawn;
  String sunrise;
  String suntransit;
  String sunset;
  String dusk;
  String moonrise;
  String moontransit;
  String moonset;
  int moonphase;
  int moonzodiac;

  Astronomy({
    required this.dawn,
    required this.sunrise,
    required this.suntransit,
    required this.sunset,
    required this.dusk,
    required this.moonrise,
    required this.moontransit,
    required this.moonset,
    required this.moonphase,
    required this.moonzodiac,
  });

  factory Astronomy.fromJson(Map<String, dynamic> json) => Astronomy(
        dawn: json["dawn"],
        sunrise: json["sunrise"],
        suntransit: json["suntransit"],
        sunset: json["sunset"],
        dusk: json["dusk"],
        moonrise: json["moonrise"] ?? "",
        moontransit: json["moontransit"] ?? "",
        moonset: json["moonset"],
        moonphase: json["moonphase"],
        moonzodiac: json["moonzodiac"],
      );

  Map<String, dynamic> toJson() => {
        "dawn": dawn,
        "sunrise": sunrise,
        "suntransit": suntransit,
        "sunset": sunset,
        "dusk": dusk,
        "moonrise": moonrise,
        "moontransit": moontransit,
        "moonset": moonset,
        "moonphase": moonphase,
        "moonzodiac": moonzodiac,
      };
}

class Prec {
  int sum;
  int probability;
  dynamic sumAsRain;
  int precClass;

  Prec({
    required this.sum,
    required this.probability,
    required this.sumAsRain,
    required this.precClass,
  });

  factory Prec.fromJson(Map<String, dynamic> json) => Prec(
        sum: json["sum"].toInt(),
        probability: json["probability"],
        sumAsRain: json["sumAsRain"],
        precClass: json["class"],
      );

  Map<String, dynamic> toJson() => {
        "sum": sum,
        "probability": probability,
        "sumAsRain": sumAsRain,
        "class": precClass,
      };
}

class SnowLine {
  dynamic avg;
  int? min;
  int? max;
  String? unit;

  SnowLine({
    required this.avg,
    required this.min,
    required this.max,
    this.unit,
  });

  factory SnowLine.fromJson(Map<String, dynamic> json) => SnowLine(
        avg: json["avg"],
        min: json["min"],
        max: json["max"],
        unit: json["unit"],
      );

  Map<String, dynamic> toJson() => {
        "avg": avg,
        "min": min,
        "max": max,
        "unit": unit,
      };
}

class WeatherClass {
  int state;
  String text;
  String icon;

  WeatherClass({
    required this.state,
    required this.text,
    required this.icon,
  });

  factory WeatherClass.fromJson(Map<String, dynamic> json) => WeatherClass(
        state: json["state"],
        text: json["text"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "text": text,
        "icon": icon,
      };
}

class Wind {
  String unit;
  String direction;
  String text;
  dynamic avg;
  int min;
  int max;
  Gusts gusts;
  bool significationWind;

  Wind({
    required this.unit,
    required this.direction,
    required this.text,
    required this.avg,
    required this.min,
    required this.max,
    required this.gusts,
    required this.significationWind,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        unit: json["unit"],
        direction: json["direction"],
        text: json["text"],
        avg: json["avg"],
        min: json["min"],
        max: json["max"],
        gusts: Gusts.fromJson(json["gusts"]),
        significationWind: json["significationWind"],
      );

  Map<String, dynamic> toJson() => {
        "unit": unit,
        "direction": direction,
        "text": text,
        "avg": avg,
        "min": min,
        "max": max,
        "gusts": gusts.toJson(),
        "significationWind": significationWind,
      };
}

class Gusts {
  int value;
  dynamic text;

  Gusts({
    required this.value,
    required this.text,
  });

  factory Gusts.fromJson(Map<String, dynamic> json) => Gusts(
        value: json["value"] ?? 0,
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "text": text,
      };
}
