import 'package:flutter/material.dart';

class InnerAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const InnerAppbar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.w800),
      ),
      centerTitle: true,
    );
  }
}
