import 'package:demo/controller/bottomController.dart';
import 'package:demo/view/pageone/pageone.dart';
import 'package:demo/view/pagethree/page3.dart';
import 'package:demo/view/pagetwo/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomPage extends StatelessWidget {
  final BottomPageController controllers = Get.put(BottomPageController());

  List<Widget> _screen() {
    return [
      PageOne(),
      PageTwo(),
      PageThree(),
      PageThree(),
      PageOne(),
    ];
  }

  List<PersistentBottomNavBarItem> _navbar() {
    return [
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.amber,
        inactiveColorPrimary: Colors.black,
        title: "さがす",
        icon: const Icon(
          Icons.search,
          color: Colors.amber,
        ),
        inactiveIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.amber,
        title: "お仕事",
        icon: const Icon(
          Icons.badge,
          color: Colors.amber,
        ),
        inactiveIcon: const Icon(
          Icons.badge,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.amber,
        title: "打刻する",
        icon: Image.asset(
          "assets/image/image100.png",
        ),
        inactiveIcon: Image.asset(
          "assets/image/image100.png",
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.amber,
        title: "チャット",
        icon: const Icon(
          Icons.chat,
          color: Colors.amber,
        ),
        inactiveIcon: const Icon(
          Icons.chat,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.amber,
        title: "マイページ",
        icon: const Icon(
          Icons.person,
          color: Colors.amber,
        ),
        inactiveIcon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomPageController>(
        init: controllers, // Initialize the controller
        builder: (controller) {
          return PersistentTabView(
            context,
            controller:
                PersistentTabController(initialIndex: controller.currentIndex),
            screens: _screen(),
            items: _navbar(),
            backgroundColor: Colors.white,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(22),
            ),
            navBarStyle: NavBarStyle.style15,
          );
        },
      ),
    );
  }
}
