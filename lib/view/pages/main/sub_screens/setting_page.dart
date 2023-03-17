import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';

class SettingPage extends GetView<AuthController> {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Title(
            color: Colors.black,
            child: const Text(
              'Setting',
              style: TextStyle(
                color: Color.fromARGB(221, 134, 134, 134),
                fontSize: 30,
              ),
            ),
          ),
          elevation: 4,
          backgroundColor: const Color.fromARGB(255, 255, 241, 198),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 241, 198),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                child: const Center(
                  child: Text(
                    "name space",
                    // controller.authentication.currentUser!.email.toString(),
                    style: TextStyle(
                        color: Color.fromARGB(255, 79, 158, 165), fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 241, 198),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: const Offset(0, 5),
                              spreadRadius: 2,
                              blurRadius: 7)
                        ]),
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: const Color.fromARGB(255, 255, 241, 198),
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: const Color.fromARGB(255, 255, 241, 198),
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
