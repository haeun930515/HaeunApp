import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haeunapp/controller/main_controller.dart';
import 'package:haeunapp/view/pray_feed_page.dart';
import 'package:haeunapp/view/pray_list_page.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.rootPageIndex.value,
            children: [PrayFeedPage(), PrayListPage()],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.rootPageIndex.toInt(),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: controller.changeRootPageIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: '',
                activeIcon: Icon(Icons.home, color: Colors.blue),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  color: Colors.grey,
                ),
                label: '',
                activeIcon: Icon(Icons.list, color: Colors.blue),
              )
            ],
          ),
        ));
  }
}
