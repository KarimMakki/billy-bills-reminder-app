import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/widgets/custom_selection_button.dart';
import 'package:billy_bills_reminder_app/views/widgets/custom_textfield.dart';
import 'package:billy_bills_reminder_app/views/widgets/icons_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1), // Offset in (x, y) direction
            ),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 7,
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Section A",
              activeIcon: Image.asset(
                "assets/images/active-bills-icon.png",
                height: 33,
                width: 33,
              ),
              icon: Image.asset(
                "assets/images/bills-icon.png",
                height: 30,
                width: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: "Section A",
              activeIcon: Image.asset(
                "assets/images/active-calendar-icon.png",
                height: 33,
                width: 33,
              ),
              icon: Image.asset(
                "assets/images/calendar-icon.png",
                height: 30,
                width: 30,
              ),
            ),
            const BottomNavigationBarItem(
              label: "Section A",
              icon: CircleAvatar(
                radius: 18,
                backgroundColor: primaryColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Section A",
              activeIcon: Image.asset(
                "assets/images/active-reports-icon.png",
                height: 36,
                width: 36,
              ),
              icon: Image.asset(
                "assets/images/reports-icon.png",
                height: 28,
                width: 28,
              ),
            ),
            BottomNavigationBarItem(
              label: "Section A",
              activeIcon: Image.asset(
                "assets/images/active-budget-planner-icon.png",
                height: 36,
                width: 36,
              ),
              icon: Image.asset(
                "assets/images/budget-planner-icon.png",
                height: 28,
                width: 28,
              ),
            ),
          ],
          currentIndex: navigationShell.currentIndex,
          onTap: (int index) async {
            if (index == 2) {
              await showModalBottomSheet(
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
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const CustomSelectionButton(
                                      icon: Icons.category,
                                      buttonText: "Select a Category",
                                      height: 50,
                                      width: double.infinity,
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "Icon",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
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
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.3,
                                                  30),
                                              shape:
                                                  const BeveledRectangleBorder(),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Due Date",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              CustomSelectionButton(
                                                icon: Icons.calendar_month,
                                                height: 50,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.5,
                                                hintText: "01/01/2000",
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Flexible(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "How Often?",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              CustomSelectionButton(
                                                icon: Icons.alarm,
                                                height: 50,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.5,
                                                hintText: "Duration",
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 25),
                                    const Text(
                                      "When shall we remind you?",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 5),
                                    const CustomSelectionButton(
                                        icon: Icons.notifications_active,
                                        buttonText: "Select a reminder",
                                        width: double.infinity,
                                        height: 50),
                                    const SizedBox(height: 25),
                                    const Text(
                                      "Additional Notes",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const CustomTextfield(
                                        width: double.infinity, height: 100),
                                    SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.07)
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                  );
                },
              );
            } else {
              navigationShell.goBranch(index);
            }
          },
        ),
      ),
    );
  }
}
