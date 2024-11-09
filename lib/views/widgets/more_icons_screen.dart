import 'package:billy_bills_reminder_app/views/widgets/icons_grid.dart';
import 'package:billy_bills_reminder_app/views/widgets/inner_appbar.dart';
import 'package:flutter/material.dart';

class MoreIconsScreen extends StatelessWidget {
  const MoreIconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: const InnerAppbar(
          title: "Icons",
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Utilities",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 6),
                const IconsGrid(),
                SizedBox(height: deviceHeight * 0.05),
                Text(
                  "Utilities",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 6),
                const IconsGrid(),
                SizedBox(height: deviceHeight * 0.05),
                Text(
                  "Utilities",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 6),
                const IconsGrid(),
                SizedBox(height: deviceHeight * 0.05),
                Text(
                  "Utilities",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 6),
                const IconsGrid(),
              ],
            ),
          ),
        ]));
  }
}
