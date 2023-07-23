import 'package:flutter/material.dart';

class ImageRowWidgets extends StatelessWidget {
  Image image;

  ImageRowWidgets(this.image);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          child: image,
        ),
      ],
    );
  }
}
