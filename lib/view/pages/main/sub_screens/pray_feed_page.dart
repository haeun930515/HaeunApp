import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/pray_controller.dart';
import 'package:haeunapp/view/pray_card_widget.dart';

class PrayFeedPage extends StatelessWidget {
  PrayFeedPage({super.key});

  final prayController = Get.put(PrayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "All Prays",
            style: TextStyle(color: Color.fromARGB(221, 134, 134, 134)),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 241, 198)),
      backgroundColor: const Color.fromARGB(255, 255, 241, 198),
      body: Column(children: [
        Expanded(child: GetX<PrayController>(
          builder: (controller) {
            return PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controller.allPrays.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: PrayCardWidget(
                      owner: controller.allPrays[index].owner,
                      content: controller.allPrays[index].content,
                      liked: controller.allPrays[index].liked,
                      timestamp: controller.allPrays[index].timestamp,
                    ),
                  );
                });
          },
        )),
      ]),
    );
  }
}
