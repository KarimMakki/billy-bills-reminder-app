import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppbar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: MediaQuery.sizeOf(context).width * 0.7,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Image.asset("assets/images/billy-logo-1.0.png",
                height: 37, width: 37),
            const SizedBox(width: 2),
            Expanded(
              child: Text(
                "My Billy",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Image.asset(
            "assets/images/bills-history.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Image.asset("assets/images/settings.png"),
        )
      ],
    );
  }
}
