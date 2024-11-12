import 'dart:ui';

import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:billy_bills_reminder_app/views/widgets/bill_card.dart';
import 'package:flutter/material.dart';

Future<dynamic> editBillDialog(BuildContext context, BillModel bill) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Dialog",
    barrierColor:
        Colors.black.withOpacity(0.5), // Optional: adds a background overlay
    transitionDuration: const Duration(milliseconds: 300), // Animation duration
    pageBuilder: (context, anim1, anim2) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: ScaleTransition(
          scale: CurvedAnimation(
            parent: anim1,
            curve: Curves.easeOutBack,
          ),
          child: AlertDialog(
            contentPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            elevation: 10.0,
            content: Container(
              alignment: Alignment.center,
              height: 300,
              width: MediaQuery.sizeOf(context).width * 0.8,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  BillCard(bill: bill),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.edit,
                            size: 25,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.share_sharp,
                            size: 25,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.delete,
                            size: 25,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: anim1,
          curve: Curves.easeInOut, // Customize the curve as needed
        ),
        child: child,
      );
    },
  );
}
