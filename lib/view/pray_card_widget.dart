import 'package:flutter/material.dart';

class PrayCardWidget extends StatelessWidget {
  const PrayCardWidget(
      {super.key,
      required this.writer,
      required this.content,
      required this.id});

  final String writer;
  final String content;
  final int id;

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
                id.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(content)
            ],
          ),
          Text(writer)
        ],
      ),
    );
  }
}
