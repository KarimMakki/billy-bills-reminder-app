import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: constant_identifier_names
enum BillStatus { Upcoming, Overdue, Paid }

// ignore: constant_identifier_names
enum BillDuration { Daily, Weekly, Monthly, Yearly }

class BillModel {
  final String title;
  final String category;
  final double amount;
  final IconData icon;
  final DateTime dueDate;
  final DateTime reminderTime;
  final BillDuration duration;
  final String? additionalNote;
  final BillStatus billStatus;
  BillModel(
      {required this.title,
      required this.category,
      required this.amount,
      required this.icon,
      required this.dueDate,
      required this.reminderTime,
      required this.duration,
      required this.billStatus,
      this.additionalNote});

  String get statusText {
    switch (billStatus) {
      case BillStatus.Upcoming:
        return 'Upcoming';
      case BillStatus.Overdue:
        return 'Overdue';
      case BillStatus.Paid:
        return 'Paid';
    }
  }

  Color get statusColor {
    switch (billStatus) {
      case BillStatus.Upcoming:
        return upcomingColor;
      case BillStatus.Overdue:
        return overdueColor;
      case BillStatus.Paid:
        return paidColor;
    }
  }

  String get getDuration {
    switch (duration) {
      case BillDuration.Daily:
        return 'Daily';
      case BillDuration.Weekly:
        return "Weekly";
      case BillDuration.Monthly:
        return "Monthly";
      case BillDuration.Yearly:
        return "Yearly";
    }
  }

  String get getDueDate => DateFormat("MMM dd").format(dueDate);
}
