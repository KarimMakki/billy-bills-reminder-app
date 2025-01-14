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
        ValueNotifier(List<bool>.filled(billCategories.length, false));

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
              children: billCategories.asMap().entries.map((entry) {
                final index = entry.key;
                final category = entry.value;

                return ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: ListTile(
                        leading: Icon(category.icon),
                        title: Text(category.name),
                      ),
                    );
                  },
                  body: ListView(
                    shrinkWrap: true,
                    children: category.subCategories.map((subCategory) {
                      return InkWell(
                        onTap: () {
                          context.pop(subCategory.name);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 12),
                          child: Row(
                            children: [
                              subCategory.image != null
                                  ? subCategory.image!
                                  : Icon(
                                      subCategory.icon,
                                      color: primaryColor,
                                    ),
                              SizedBox(width: 4),
                              Text(subCategory.name),
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
