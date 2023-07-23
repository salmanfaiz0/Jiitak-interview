import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  String tittle;
  String subtittle;

  RowText({required this.tittle, required this.subtittle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(tittle),
        Text(
          subtittle,
          style: TextStyle(color: Colors.grey[400]),
        ),
      ],
    );
  }
}
