import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';
import '../model/pray.dart';

class PrayController extends GetxController {
  var prays = <Pray>[].obs;
  var allPrays = <Pray>[].obs;

  var selectedTitle = "창세기".obs;

  var visible = false.obs;

  final firestore = FirebaseFirestore.instance;

  var prayContentController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void changeTitle(String title) {
    selectedTitle.value = title;
  }

  void fetchData() async {
    try {
      var result = await firestore.collection("allPrays").get();
      for (var pray in result.docs) {
        Pray pr = Pray.fromJson(pray.data());
        allPrays.add(pr);
      }
      for (var pray in result.docs) {
        Pray pr = Pray.fromJson(pray.data());
        if (pr.owner ==
            AuthController.instance.authentication.currentUser?.email) {
          prays.add(pr);
        }
      }
      // .doc("ROvzwMkNO3UrbYNuedib")
      // Pray pr = Pray.fromJson(result.data()!);
      // print(pr.liked);
    } catch (e) {}

    // prays.assignAll(prayData);
  }
}
