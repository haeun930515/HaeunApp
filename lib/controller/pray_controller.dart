import 'package:get/get.dart';
import '../model/pray.dart';

class PrayController extends GetxController {
  var prays = <Pray>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    var prayData = [
      Pray(1, "This is pray"),
      Pray(2, "This another is pray"),
      Pray(3, "This is another pray"),
      Pray(4, "This is pray another "),
      Pray(5, "This is pray"),
    ];
    prays.assignAll(prayData);
  }
}
