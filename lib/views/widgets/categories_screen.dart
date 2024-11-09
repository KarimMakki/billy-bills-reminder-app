import 'package:billy_bills_reminder_app/views/widgets/category_tile.dart';
import 'package:billy_bills_reminder_app/views/widgets/inner_appbar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InnerAppbar(title: "Categories"),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 5,
          );
        },
        itemBuilder: (context, index) {
          return const CategoryTile(
              title: "Utilities", icon: Icons.electric_bolt);
        },
      ),
    );
  }
}
