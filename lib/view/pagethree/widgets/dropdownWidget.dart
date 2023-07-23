import 'package:demo/controller/pagethreeController.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.controller,
  });

  final PageThreeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: DropdownButton<String>(
                isDense: true,
                value: controller.selectedTime.value,
                icon: Icon(Icons.arrow_drop_down),
                // iconSize: 24,
                elevation: 16,
                underline: Container(),
                onChanged: (String? newValue) {
                  controller.setSelectedTime(newValue!);
                },
                items: controller.timeOptions
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        Text("~"),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: DropdownButton<String>(
                isDense: true,
                value: controller.selectedTime.value,
                icon: Icon(Icons.arrow_drop_down),
                elevation: 16,
                underline: Container(),
                onChanged: (String? newValue) {
                  controller.setSelectedTime(newValue!);
                },
                items: controller.timeOptions
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}