import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/widgets/subcategories_screen.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? activeText;
  const CategoryTile(
      {super.key, required this.title, required this.icon, this.activeText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SubCategoriesScreen(),
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
        child: Row(
          children: [
            Icon(
              icon,
              color: primaryColor,
            ),
            const SizedBox(width: 4),
            Text(title),
            const Spacer(),
            Text(
              activeText ?? "",
              style: const TextStyle(color: highlightColor),
            ),
            const Icon(
              Icons.chevron_right,
              size: 28,
              color: highlightColor,
            )
          ],
        ),
      ),
    );
  }
}
