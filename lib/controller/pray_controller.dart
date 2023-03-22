import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';
import 'package:haeunapp/provider/api_service.dart';
import 'package:haeunapp/utils/bible_chapter_changer.dart';
import '../model/pray.dart';

class PrayController extends GetxController {
  var prays = <Pray>[].obs;
  var allPrays = <Pray>[].obs;

  var selectedTitle = "창세기".obs;
  var chapter = TextEditingController();
  var verse = TextEditingController();

  var bibleContent = "".obs;

  var isLoading = false.obs;

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
    } catch (e) {}
  }

  void fetchBible(String chapter, String verse) async {
    isLoading.value = true;
    String pg = BibleChapterChanger().getChapter(selectedTitle.value);
    String chp = "$chapter:$verse";
    try {
      await ApiService()
          .getQuote("$pg/$chp")
          .then((value) => bibleContent.value = "$selectedTitle $value");

      isLoading.value = false;
    } catch (e) {}
  }
}
