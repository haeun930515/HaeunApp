import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/main_controller.dart';
import 'package:haeunapp/view/main/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter App Haeun',
      initialBinding: BindingsBuilder(() {
        Get.put(MainController());
      }),
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainScreen(),
    );
  }
}
