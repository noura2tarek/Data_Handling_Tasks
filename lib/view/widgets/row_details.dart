import 'package:flutter/material.dart';

class RowDetails extends StatelessWidget {
  const RowDetails({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 2),
        Text(
          text,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
