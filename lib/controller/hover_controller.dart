import 'package:get/get.dart';

class HoverController extends GetxController {
  RxBool rootPageIndex = false.obs;

  void hovered(bool hover) {
    rootPageIndex.value = hover;
  }
}
