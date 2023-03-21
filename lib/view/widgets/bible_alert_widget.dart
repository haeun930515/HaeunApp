import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/pray_controller.dart';

class BibleAlertWidget extends GetView<PrayController> {
  BibleAlertWidget({super.key});

  final titles = ["창세기", "잠언", "열왕기상"];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Card(
                  child: DropdownButton(
                    value: controller.selectedTitle.value,
                    items: titles.map(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      controller.changeTitle(value!);
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
