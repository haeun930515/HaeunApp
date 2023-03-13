import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 241, 198),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.only(left: 5),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'email'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
