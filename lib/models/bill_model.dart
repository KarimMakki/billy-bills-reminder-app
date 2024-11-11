import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum BillStatus { Upcoming, Overdue, Paid }

class BillModel {
  final String title;
  final String category;
  final IconData icon;
  final DateTime dueDate;
  final DateTime reminderTime;
  final String duration;
  final String? additionalNote;
  final BillStatus billStatus;
  BillModel(
      {required this.title,
      required this.category,
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
}
