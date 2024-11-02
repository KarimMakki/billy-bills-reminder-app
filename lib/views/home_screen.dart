import 'dart:ui';

import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/dialogs/edit_bill_dialog.dart';
import 'package:billy_bills_reminder_app/views/widgets/bill_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BillCard> billCards = [
    BillCard(billTitle: "electricity bill"),
    BillCard(billTitle: "gym bill"),
    BillCard(billTitle: "water bill"),
    BillCard(billTitle: "internet bill"),
    BillCard(billTitle: "sewage bill"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              const TabBar(
                  labelColor: primaryColor,
                  splashFactory: NoSplash.splashFactory,
                  unselectedLabelStyle:
                      TextStyle(color: Color.fromARGB(56, 0, 0, 0)),
                  labelStyle: TextStyle(fontWeight: FontWeight.w900),
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(text: "Upcoming"),
                    Tab(text: "Overdue"),
                    Tab(text: "Paid")
                  ]),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                    itemCount: billCards.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          editBillDialog(context, billCards[index]);
                        },
                        child: billCards[index],
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: billCards.length,
                    itemBuilder: (context, index) {
                      return billCards[index];
                    },
                  ),
                  ListView.builder(
                    itemCount: billCards.length,
                    itemBuilder: (context, index) {
                      return billCards[index];
                    },
                  ),
                  ListView.builder(
                    itemCount: billCards.length,
                    itemBuilder: (context, index) {
                      return billCards[index];
                    },
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
