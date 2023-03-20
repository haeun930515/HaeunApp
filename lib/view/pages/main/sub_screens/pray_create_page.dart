import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/pray_controller.dart';

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
      backgroundColor: const Color.fromARGB(255, 255, 241, 198),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: const [
            Text("Title?"),
            SizedBox(
              height: 20,
            ),
            Text("Content"),
            Text("성경 구절")
          ],
        ),
      ),
    );
  }
}
