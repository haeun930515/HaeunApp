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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 5, top: 8, right: 5, bottom: 5),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(229, 186, 115, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    owner,
                  ),
                  const Text("소제목"),
                ]),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(250, 234, 177, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    timestamp,
                  ),
                  const Text(
                    "PlaceHolder",
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    content,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  )),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(liked.toString())],
              ),
            ),
          )
        ],
      ),
    );
  }
}
