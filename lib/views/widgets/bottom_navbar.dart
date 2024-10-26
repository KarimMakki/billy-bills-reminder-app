import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: deviceWidth * 0.70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Shadow color with opacity
              spreadRadius: 1, // Spread radius
              blurRadius: 2, // Blur radius
              offset: const Offset(0, 1), // Offset in (x, y) direction
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/bills-icon.jpg",
            height: 35,
            width: 35,
          ),
          Image.asset("assets/images/calendar-icon.png", height: 35, width: 35),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          Image.asset("assets/images/reports-icon.png", height: 35, width: 35),
          Image.asset("assets/images/budget-planner-icon.png",
              height: 30, width: 30),
        ],
      ),
    );
  }
}
