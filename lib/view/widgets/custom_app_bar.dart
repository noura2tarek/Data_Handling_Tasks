import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
    this.leadingVisibility = true,
  });

  final String title;
  final List<Widget>? actions;
  final bool leadingVisibility;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0,
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      //backgroundColor: Colors.black45,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      leading: leadingVisibility
          ? IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 18.0,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      )
          : null,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(61.0);
}
