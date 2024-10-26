import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  const BillCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Get the width and height of the available space using constraints.
        double cardHeight = constraints.maxHeight *
            0.11; // Height relative to the available space

        return Container(
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
                    child: Image.asset("assets/images/lightning-bolt.png"),
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
                        "Utility",
                        style: Theme.of(context).primaryTextTheme.titleMedium,
                      ),
                      Text(
                        "Electricity Bill",
                        style: Theme.of(context).primaryTextTheme.titleSmall,
                      ),
                      Text(
                        "Due: Oct 10",
                        style: Theme.of(context).primaryTextTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "OVERDUE",
                      style: TextStyle(
                        color: overdueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "\$100",
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