import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const MyAppBar({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(titleText),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
      IconButton(
        icon: Icon(Icons.settings),
        onPressed: () {
        // functionality
        },
      ),
      ],
    );
    }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}