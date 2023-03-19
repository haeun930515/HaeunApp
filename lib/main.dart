import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';
import 'package:haeunapp/controller/main_controller.dart';
import 'package:haeunapp/view/pages/login/login_screen.dart';

late final FirebaseApp app;
late final FirebaseAuth auth;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
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
        Get.put(AuthController());
      }),
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(),
    );
  }
}
