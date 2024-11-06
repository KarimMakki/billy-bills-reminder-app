import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/bottomSheets/duration_bottom_sheet.dart';
import 'package:billy_bills_reminder_app/views/dialogs/reminder_time_popup.dart';
import 'package:billy_bills_reminder_app/views/widgets/custom_selection_button.dart';
import 'package:billy_bills_reminder_app/views/widgets/custom_textfield.dart';
import 'package:billy_bills_reminder_app/views/widgets/icons_grid.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> addBillBottomSheet(
    BuildContext context, List<DateTime?>? date) {
  return showModalBottomSheet(
    showDragHandle: true,
    useSafeArea: true,
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    enableDrag: true,
    builder: (context) {
      return DraggableScrollableSheet(
        // maxChildSize: 0.5,
        expand: true,
        initialChildSize: 1,
        builder: (context, scrollController) {
          final theme = Theme.of(context);
          return Material(
              color: theme.scaffoldBackgroundColor,
              shape: theme.bottomSheetTheme.shape,
              clipBehavior: Clip.hardEdge,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            context.pop();
                          },
                          icon: const Icon(Icons.close)),
                      Text(
                        "New Bill",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomTextfield(
                          width: double.infinity,
                          height: 35,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Category",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomSelectionButton(
                          icon: Icons.category,
                          buttonText: "Select a Category",
                          height: 50,
                          width: double.infinity,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Icon",
                        ),
                        const IconsGrid(),
                        const SizedBox(
                          height: 12,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.sizeOf(context).width * 0.3,
                                      30),
                                  shape: const BeveledRectangleBorder(),
                                  backgroundColor: secondaryColor),
                              child: const Text(
                                "More Icons",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "When shall we remind you?",
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ReminderTimePopup(),
                                  // CustomSelectionButton(
                                  //   icon: Icons.notifications_active,
                                  //   height: 50,
                                  //   width:
                                  //       MediaQuery.sizeOf(context).width * 0.5,
                                  //   buttonText: "Select a reminder",
                                  //   onPressed: () async {
                                  //     await showDialog(
                                  //       context: context,
                                  //       builder: (context) {
                                  //         return ReminderTimePopup();
                                  //       },
                                  //     );
                                  //   },
                                  // )
                                ],
                              ),
                            ),
                            SizedBox(width: 6),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "How Often?",
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  CustomSelectionButton(
                                    icon: Icons.alarm,
                                    height: 50,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
                                    hintText: "Duration",
                                    onPressed: () {
                                      durationBottomSheet(context);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "Due date",
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(height: 5),
                        CustomSelectionButton(
                          icon: Icons.calendar_month,
                          hintText: "01/01/2000",
                          width: double.infinity,
                          height: 50,
                          onPressed: () async {
                            date = await showCalendarDatePicker2Dialog(
                              context: context,
                              config:
                                  CalendarDatePicker2WithActionButtonsConfig(
                                selectedDayHighlightColor: primaryColor,
                              ),
                              dialogSize: const Size(325, 400),
                            );
                          },
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "Additional Notes",
                          textAlign: TextAlign.right,
                        ),
                        const CustomTextfield(
                            width: double.infinity, height: 100),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.07)
                      ],
                    ),
                  ),
                ],
              ));
        },
      );
    },
  );
}
