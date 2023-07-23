import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageThreeController extends GetxController {
  final RxString selectedTime = '10:00'.obs;

  final List<String> timeOptions = ['10:00', '11:00', '12:00', '20:22'];

  final List list = ["金", "土", "日", "祝"];
  final List<String> times = ["月", "火", "水", "木"];
  final List<String> list1 = ["有", "無"];

  final List<String> selectedTimes = <String>[].obs;

  void setSelectedTime(String newValue) {
    selectedTime.value = newValue;
    update();
  }

  void toggleSelectedTime(String time) {
    if (selectedTimes.contains(time)) {
      selectedTimes.remove(time);
      update();
    } else {
      selectedTimes.add(time);
      update();
    }
  }
}
