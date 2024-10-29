import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/views/widgets/bill_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return BillCard();
                    },
                  ),
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return BillCard();
                    },
                  ),
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return BillCard();
                    },
                  ),
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return BillCard();
                    },
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
