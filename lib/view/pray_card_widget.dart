import 'package:flutter/material.dart';

class PrayCardWidget extends StatelessWidget {
  const PrayCardWidget(
      {super.key,
      required this.timestamp,
      required this.content,
      required this.liked,
      required this.owner});

  final String timestamp;
  final String content;
  final int liked;
  final String owner;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                owner,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(content)
            ],
          ),
          Text(timestamp),
          Text(liked.toString()),
          Text(content)
        ],
      ),
    );
  }
}
