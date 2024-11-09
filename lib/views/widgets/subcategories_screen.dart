import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/widgets/category_tile.dart';
import 'package:billy_bills_reminder_app/views/widgets/inner_appbar.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> subCategories = ["Water", "Electricity", "Internet"];
    return Scaffold(
      appBar: const InnerAppbar(title: "Utilities"),
      body: ListView.separated(
        itemCount: subCategories.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 5,
          );
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
              child: Row(
                children: [
                  Icon(
                    Icons.water_drop,
                    color: primaryColor,
                  ),
                  const SizedBox(width: 4),
                  Text("Electricity"),
                  const Spacer(),
                  Text(
                    "",
                    style: const TextStyle(color: highlightColor),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
