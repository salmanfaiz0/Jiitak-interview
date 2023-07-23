import 'package:get/get.dart';

class BottomPageController extends GetxController {
  var currentIndex = 0;

  void changeTab(int index) {
    currentIndex = index;
    update(); 
  }
}
