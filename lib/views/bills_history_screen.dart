import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/widgets/bill_history_card.dart';
import 'package:flutter/material.dart';

class BillsHistoryScreen extends StatefulWidget {
  const BillsHistoryScreen({super.key});

  @override
  State<BillsHistoryScreen> createState() => _BillsHistoryScreenState();
}

class _BillsHistoryScreenState extends State<BillsHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bills History",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchBar(
              elevation: WidgetStateProperty.resolveWith<double>(
                (Set<WidgetState> states) {
                  return 2.0; // Default elevation
                },
              ),
              leading: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.search,
                  color: primaryColor,
                ),
              ),
              trailing: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(
                    Icons.menu,
                    color: primaryColor,
                  ),
                ),
              ],
              hintText: "Search Bills",
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  // if (states.contains(WidgetState.pressed)) {
                  // return Colors
                  //     .blueAccent; // Color when the button is pressed
                  // } else if (states.contains(WidgetState.hovered)) {
                  // return Colors
                  //     .blue[300]!; // Color when the button is hovered
                  // } else if (states.contains(WidgetState.disabled)) {
                  // return Colors.grey; // Color when the button is disabled
                  // }
                  return Colors.white; // Default color
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const BillHistoryCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
