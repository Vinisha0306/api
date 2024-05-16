class Jokes {
  String joke;

  Jokes({
    required this.joke,
  });

  factory Jokes.fromJson(Map<String, dynamic> json) => Jokes(
        joke: json["joke"],
      );

  Map<String, dynamic> toJson() => {
        "joke": joke,
      };
}
