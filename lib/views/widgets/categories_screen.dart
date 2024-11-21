import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/models/category_model.dart';
import 'package:billy_bills_reminder_app/utilities/routes.dart';
import 'package:billy_bills_reminder_app/views/widgets/category_tile.dart';
import 'package:billy_bills_reminder_app/views/widgets/inner_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<List<bool>> isExpandedList =
        ValueNotifier(List<bool>.filled(categoriesList.length, false));

    return Scaffold(
      appBar: const InnerAppbar(title: "Categories"),
      body: SingleChildScrollView(
        child: ValueListenableBuilder<List<bool>>(
          valueListenable: isExpandedList,
          builder: (context, isExpanded, child) {
            return ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                // Toggle the expansion state for the clicked panel
                isExpandedList.value = List.from(isExpandedList.value)
                  ..[panelIndex] = !isExpandedList.value[panelIndex];
              },
              children: categoriesList.asMap().entries.map((entry) {
                final index = entry.key;
                final category = entry.value;

                return ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: ListTile(
                        leading: category.icon,
                        title: Text(category.name),
                      ),
                    );
                  },
                  body: ListView(
                    shrinkWrap: true,
                    children: category.subCategories.map((subCategory) {
                      return InkWell(
                        onTap: () {
                          context.pop(subCategory);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.water_drop,
                                color: primaryColor,
                              ),
                              SizedBox(width: 4),
                              Text(subCategory),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  isExpanded: isExpanded[index],
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
