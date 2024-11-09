import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      iconSize: 22,
      icon: const Icon(Icons.electric_bolt),
      alignment: Alignment.center,
      color: secondaryColor,
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor, alignment: Alignment.bottomCenter),
    );
  }
}
