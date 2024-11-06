import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomSelectionButton extends StatelessWidget {
  final double width;
  final double height;
  final String? buttonText;
  final String? hintText;
  final IconData icon;
  final Function()? onPressed;
  const CustomSelectionButton(
      {super.key,
      required this.width,
      required this.height,
      required this.icon,
      required this.onPressed,
      this.buttonText,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        children: [
          Icon(
            icon,
            color: primaryColor,
          ),
          const SizedBox(width: 4),
          buttonText != null
              ? Text(
                  buttonText ?? "",
                  style: const TextStyle(
                    color: primaryColor,
                  ),
                )
              : Text(
                  hintText ?? "",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.arrow_downward),
                color: primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
