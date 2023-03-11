import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt rootPageIndex = 0.obs;

  void changeRootPageIndex(int index) {
    rootPageIndex(index);
  }
}
