import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/bottomSheets/add_bill_bottom_sheet.dart';
import 'package:flutter/material.dart';
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
                  return const AddBillBottomSheet();
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
