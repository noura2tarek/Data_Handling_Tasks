import 'package:data_handling_task1/view/widgets/row_details.dart';
import 'package:flutter/material.dart';
import 'custom_details_text.dart';

class DetailsColumn extends StatelessWidget {
  const DetailsColumn({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowDetails(
          text: title,
          icon: icon,
        ),
        SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CustomDetailsText(
            text: value,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}
