import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';
import 'package:haeunapp/controller/pray_controller.dart';
import 'package:haeunapp/view/widgets/bible_alert_widget.dart';

class PrayCreatePage extends GetView<PrayController> {
  const PrayCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Create Pray",
              style: TextStyle(color: Color.fromARGB(221, 134, 134, 134)),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 241, 198)),
        body: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(0, 15),
                  blurRadius: 10,
                  spreadRadius: 0)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.only(left: 5, top: 8, right: 5, bottom: 5),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(229, 186, 115, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          AuthController
                              .instance.authentication.currentUser!.email
                              .toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ]),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(250, 234, 177, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "인용구",
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.visible;
                          print(controller.visible);
                          Get.dialog(BibleAlertWidget());
                        },
                        child: const Icon(
                          Icons.format_quote,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        controller: controller.prayContentController,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
