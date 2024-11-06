import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';

Future<dynamic> durationBottomSheet(BuildContext context) async {
  final List<String> durations = ["Daily", "Weekly", "Monthly", "Yearly"];
  await showModalBottomSheet(
    context: context,
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) {
          return ListView.builder(
            itemCount: durations.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  durations[index],
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: primaryColor,
                ),
              );
            },
          );
        },
      );
    },
  );
}
