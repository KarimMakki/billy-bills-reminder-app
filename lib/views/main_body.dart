import 'package:billy_bills_reminder_app/views/widgets/bottom_navbar.dart';
import 'package:billy_bills_reminder_app/views/widgets/main_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(),
      body: navigationShell,
      extendBody: true,
      bottomNavigationBar: BottomNavbar(navigationShell: navigationShell),
    );
  }
}
