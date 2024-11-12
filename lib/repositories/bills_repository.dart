import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:flutter/material.dart';

class BillsRepository {
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
}
