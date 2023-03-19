import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/auth_controller.dart';
import '../model/pray.dart';

class PrayController extends GetxController {
  var prays = <Pray>[].obs;
  var allPrays = <Pray>[].obs;

  final firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    fetchData();
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
