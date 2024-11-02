import 'package:billy_bills_reminder_app/views/add_bill_screen.dart';
import 'package:billy_bills_reminder_app/views/bills_history_screen.dart';
import 'package:billy_bills_reminder_app/views/budget_planner_screen.dart';
import 'package:billy_bills_reminder_app/views/calendar_view_screen.dart';
import 'package:billy_bills_reminder_app/views/home_screen.dart';
import 'package:billy_bills_reminder_app/views/onboarding_screen.dart';
import 'package:billy_bills_reminder_app/views/reports_insights_screen.dart';
import 'package:billy_bills_reminder_app/views/settings_screen.dart';
import 'package:billy_bills_reminder_app/views/splash_screen.dart';
import 'package:billy_bills_reminder_app/views/main_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum RoutePath {
  root(path: "/"),
  onboarding(path: "/onboarding"),
  calendarView(path: "/calendarview"),
  addBill(path: "/addbill"),
  reports(path: "/reports"),
  budgetPlanner(path: "/budgetplanner"),
  home(path: "/home"),
  billsHistory(path: "/billsHistory"),
  settings(path: "/settings");

  const RoutePath({required this.path});
  final String path;
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

class AppRoutes {
  final router = GoRouter(
      initialLocation: RoutePath.home.path,
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          name: "splashScreen",
          path: RoutePath.root.path,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          name: RoutePath.onboarding.name,
          path: RoutePath.onboarding.path,
          builder: (context, state) => const OnboardingScreen(),
        ),
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return MainBody(navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(routes: [
                GoRoute(
                  name: RoutePath.home.name,
                  path: RoutePath.home.path,
                  builder: (context, state) => const HomeScreen(),
                ),
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  name: RoutePath.calendarView.name,
                  path: RoutePath.calendarView.path,
                  builder: (context, state) => const CalendarViewScreen(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  name: RoutePath.addBill.name,
                  path: RoutePath.addBill.path,
                  builder: (context, state) => const AddBillScreen(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  name: RoutePath.reports.name,
                  path: RoutePath.reports.path,
                  builder: (context, state) => const ReportsInsightsScreen(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  name: RoutePath.budgetPlanner.name,
                  path: RoutePath.budgetPlanner.path,
                  builder: (context, state) => const BudgetPlannerScreen(),
                )
              ]),
            ]),
        GoRoute(
          name: RoutePath.billsHistory.name,
          path: RoutePath.billsHistory.path,
          builder: (context, state) => const BillsHistoryScreen(),
        ),
        GoRoute(
          name: RoutePath.settings.name,
          path: RoutePath.settings.path,
          builder: (context, state) => const SettingsScreen(),
        )
      ]);
}
