import 'package:billy_bills_reminder_app/views/onboarding_screen.dart';
import 'package:billy_bills_reminder_app/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  final router = GoRouter(routes: [
    GoRoute(
      name: "splash_screen",
      path: "/",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: "onboarding",
      path: "/onboarding",
      builder: (context, state) => const OnboardingScreen(),
    )
  ]);
}
