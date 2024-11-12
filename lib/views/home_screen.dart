import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:billy_bills_reminder_app/views/dialogs/edit_bill_dialog.dart';
import 'package:billy_bills_reminder_app/views/widgets/bill_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BillModel> bills = [
    BillModel(
        title: "Electricity Bill",
        category: "Utility",
        amount: 100,
        icon: Icons.bolt,
        dueDate: DateTime.now(),
        reminderTime: DateTime.timestamp(),
        duration: BillDuration.Yearly,
        billStatus: BillStatus.Paid),
    BillModel(
        title: "Water Bill",
        category: "Utility",
        amount: 50,
        icon: Icons.water_drop,
        dueDate: DateTime.now(),
        reminderTime: DateTime.timestamp(),
        duration: BillDuration.Monthly,
        billStatus: BillStatus.Overdue),
    BillModel(
        title: "Internet Bill",
        category: "Utility",
        amount: 200,
        icon: Icons.wifi,
        dueDate: DateTime.now(),
        reminderTime: DateTime.timestamp(),
        duration: BillDuration.Weekly,
        billStatus: BillStatus.Upcoming),
    BillModel(
        title: "Electricity Bill",
        category: "Utility",
        amount: 100,
        icon: Icons.bolt,
        dueDate: DateTime.now(),
        reminderTime: DateTime.timestamp(),
        duration: BillDuration.Yearly,
        billStatus: BillStatus.Paid),
    BillModel(
        title: "Water Bill",
        category: "Utility",
        amount: 50,
        icon: Icons.water_drop,
        dueDate: DateTime.now(),
        reminderTime: DateTime.timestamp(),
        duration: BillDuration.Monthly,
        billStatus: BillStatus.Overdue),
    BillModel(
        title: "Internet Bill",
        category: "Utility",
        amount: 200,
        icon: Icons.wifi,
        dueDate: DateTime.now(),
        reminderTime: DateTime.timestamp(),
        duration: BillDuration.Weekly,
        billStatus: BillStatus.Upcoming),
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
                    itemCount: bills.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          editBillDialog(context, bills[index]);
                        },
                        child: BillCard(bill: bills[index]),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: bills.length,
                    itemBuilder: (context, index) {
                      return BillCard(bill: bills[index]);
                    },
                  ),
                  ListView.builder(
                    itemCount: bills.length,
                    itemBuilder: (context, index) {
                      return BillCard(bill: bills[index]);
                    },
                  ),
                  ListView.builder(
                    itemCount: bills.length,
                    itemBuilder: (context, index) {
                      return BillCard(bill: bills[index]);
                    },
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
