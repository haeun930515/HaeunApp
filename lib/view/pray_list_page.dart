import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/pray_controller.dart';
import 'package:haeunapp/view/pray_card_widget.dart';

class PrayListPage extends StatelessWidget {
  PrayListPage({super.key});

  final prayController = Get.put(PrayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 241, 198),
      body: Column(children: [
        Expanded(
          child: GetX<PrayController>(builder: (controller) {
            return ListView.builder(
              itemCount: controller.prays.length,
              itemBuilder: (context, index) {
                return PrayCardWidget(
                    writer: "${controller.prays[index].id}writer",
                    content: controller.prays[index].text,
                    id: controller.prays[index].id);
              },
            );
          }),
        )
      ]),
    );
  }
}
