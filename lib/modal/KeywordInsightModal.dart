class KeywordInsight {
  String text;
  int volume;
  String competitionLevel;
  int competitionIndex;
  double lowBid;
  double highBid;
  double trend;

  KeywordInsight({
    required this.text,
    required this.volume,
    required this.competitionLevel,
    required this.competitionIndex,
    required this.lowBid,
    required this.highBid,
    required this.trend,
  });

  factory KeywordInsight.fromJson(Map<String, dynamic> json) => KeywordInsight(
        text: json["text"],
        volume: json["volume"],
        competitionLevel: json["competition_level"],
        competitionIndex: json["competition_index"],
        lowBid: json["low_bid"]?.toDouble(),
        highBid: json["high_bid"]?.toDouble(),
        trend: json["trend"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "volume": volume,
        "competition_level": competitionLevel,
        "competition_index": competitionIndex,
        "low_bid": lowBid,
        "high_bid": highBid,
        "trend": trend,
      };
}
