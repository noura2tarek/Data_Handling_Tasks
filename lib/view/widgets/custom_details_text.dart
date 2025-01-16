import 'package:flutter/material.dart';

class CustomDetailsText extends StatelessWidget {
  const CustomDetailsText(
      {super.key,
      required this.text,
      this.isPhone = false,
      this.fontSize = 16.0,
      });

  final String text;
  final bool isPhone;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      isPhone ? '+$text' : text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
    );
  }
}
