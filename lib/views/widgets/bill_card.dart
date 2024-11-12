import 'dart:ui';

import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  final BillModel bill;
  const BillCard({super.key, required this.bill});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Get the width and height of the available space using constraints.
        double cardHeight = MediaQuery.sizeOf(context).height *
            0.12; // Height relative to the available space

        return Container(
          margin: const EdgeInsets.all(10),
          width: constraints.maxWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: constraints.maxWidth *
                      0.05, // Making radius responsive based on width
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Icon(
                      bill.icon,
                      size: 28,
                      color: secondaryColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bill.category,
                        style: Theme.of(context)
                            .primaryTextTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        bill.title,
                        style: Theme.of(context).primaryTextTheme.titleSmall,
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'Due: ',
                          style: const TextStyle(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: bill.getDueDate,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white), // Custom style
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bill.statusText.toUpperCase(),
                      style: TextStyle(
                        color: bill.statusColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "\$ ${bill.amount}",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .titleMedium
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
