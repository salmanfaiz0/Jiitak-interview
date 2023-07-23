import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  String title;
  String subtitle;

  TextfieldWidget({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(text: title, style: TextStyle(color: Colors.black)),
            TextSpan(text: '* ', style: TextStyle(color: Colors.red)),
          ]),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                border: OutlineInputBorder(),
                hintText: subtitle),
          ),
        ),
      ],
    );
  }
}
