import 'package:billy_bills_reminder_app/constants/constants.dart';
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
                icon: Image.asset(
                  "assets/images/bills-icon.jpg",
                  height: 30,
                  width: 30,
                ),
                label: 'Section A'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/calendar-icon.png",
                  height: 30,
                  width: 30,
                ),
                label: 'Section A'),
            const BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 18,
                  backgroundColor: primaryColor,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                label: 'Section A'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/reports-icon.png",
                  height: 30,
                  width: 30,
                ),
                label: 'Section A'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/budget-planner-icon.png",
                  height: 28,
                  width: 28,
                ),
                label: 'Section A'),
          ],
          currentIndex: navigationShell.currentIndex,
          onTap: (int index) => navigationShell.goBranch(index),
        ),
      ),
    );
  }
}
