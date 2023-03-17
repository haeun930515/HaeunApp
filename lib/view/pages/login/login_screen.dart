import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 241, 198),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        offset: const Offset(0, 5),
                        spreadRadius: 2,
                        blurRadius: 7)
                  ],
                ),
                child: TextField(
                  controller: controller.emailController,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'email'),
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        offset: const Offset(0, 5),
                        spreadRadius: 2,
                        blurRadius: 7)
                  ],
                ),
                child: TextField(
                  obscureText: true,
                  controller: controller.passwordController,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'password'),
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      AuthController.instance.register(
                          controller.emailController.text.trim(),
                          controller.passwordController.text.trim());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 78, 175, 255),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: const Offset(0, 5),
                              spreadRadius: 2,
                              blurRadius: 7)
                        ],
                      ),
                      child: const Text("Sign up"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      AuthController.instance.signIn(
                          controller.emailController.text.trim(),
                          controller.passwordController.text.trim());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: const Offset(0, 5),
                              spreadRadius: 2,
                              blurRadius: 7)
                        ],
                      ),
                      child: const Text("Sign in"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
