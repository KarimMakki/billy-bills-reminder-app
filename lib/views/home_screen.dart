import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:billy_bills_reminder_app/viewmodels/home_screen_viewmodel.dart';
import 'package:billy_bills_reminder_app/views/dialogs/edit_bill_dialog.dart';
import 'package:billy_bills_reminder_app/views/widgets/bill_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeviewmodel = ref.watch(homeViewModelProvider);
    final homeviewmodelnotifier = ref.watch(homeViewModelProvider.notifier);
    // final allBills = homeviewmodel.allBills;
    final upcomingBills = homeviewmodelnotifier.getUpcomingBills();
    final overdueBills = homeviewmodelnotifier.getoverDueBills();
    final paidBills = homeviewmodelnotifier.getPaidBills();

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
                    itemCount: homeviewmodel.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          editBillDialog(context, homeviewmodel[index]);
                        },
                        child: BillCard(bill: homeviewmodel[index]),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: upcomingBills.length,
                    itemBuilder: (context, index) {
                      return BillCard(bill: upcomingBills[index]);
                    },
                  ),
                  ListView.builder(
                    itemCount: overdueBills.length,
                    itemBuilder: (context, index) {
                      return BillCard(bill: overdueBills[index]);
                    },
                  ),
                  ListView.builder(
                    itemCount: paidBills.length,
                    itemBuilder: (context, index) {
                      return BillCard(bill: paidBills[index]);
                    },
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
