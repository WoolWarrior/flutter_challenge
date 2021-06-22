import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  HomeAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      title: Text(
        title,
        style: TextStyle(fontSize: 36),
      ),
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(Icons.messenger_outline),
          onPressed: () => {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () => {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
