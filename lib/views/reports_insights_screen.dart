import 'package:flutter/material.dart';

class ReportsInsightsScreen extends StatefulWidget {
  const ReportsInsightsScreen({super.key});

  @override
  State<ReportsInsightsScreen> createState() => _ReportsInsightsScreenState();
}

class _ReportsInsightsScreenState extends State<ReportsInsightsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Reports Screen"),
      ),
    );
  }
}
