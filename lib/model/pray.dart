class Pray {
  final String timestamp;
  final String content;
  final int liked;
  final String owner;

  Pray(this.timestamp, this.content, this.liked, this.owner);

  factory Pray.fromJson(Map<String, dynamic> json) {
    return Pray(
        json['timestamp'], json['content'], json['liked'], json['owner']);
  }
}
