import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CalendarItemCard extends StatelessWidget {
  final IconData icon;
  const CalendarItemCard({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 4,
                spreadRadius: 3,
                color: highlightColor)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: secondaryColor,
              ),
            ),
            const SizedBox(width: 7),
            Text(
              "Gym Subscription",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
            const Spacer(),
            const Text(
              "\$100",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
