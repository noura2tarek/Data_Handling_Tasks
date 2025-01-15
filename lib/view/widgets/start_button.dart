import 'package:data_handling_task1/core/app_strings.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      onPressed: onTap,
      child: Text(
        AppStrings.click,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
