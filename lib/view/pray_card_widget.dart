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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                offset: const Offset(0, 5),
                spreadRadius: 2,
                blurRadius: 7)
          ]),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 5, top: 8, right: 5, bottom: 5),
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    owner,
                  ),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const Text("소제목"),
                ]),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      timestamp,
                    ),
                    Text(liked.toString()),
                    const Text("PlaceHolder")
                  ],
                ),
              ),
              Flexible(
                flex: 3,
                child: Text(content),
              )
            ],
          ),
        ],
      ),
    );
  }
}
