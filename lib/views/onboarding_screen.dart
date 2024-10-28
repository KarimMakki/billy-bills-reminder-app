import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75),
                  ),
                  Text(
                    "Billy!",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: primaryColor, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.45,
                    child: Image.asset(
                      "assets/images/billy-logo-1.0.png",
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.9,
                    child: Wrap(
                      runAlignment: WrapAlignment.start,
                      spacing: 35,
                      direction: Axis.vertical,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: Image.asset(
                                  "assets/images/onboarding-feature-1.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              onboardingFeature1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: Image.asset(
                                  "assets/images/onboarding-feature-2.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              onboardingFeature2,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: Image.asset(
                                  "assets/images/onboarding-feature-3.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              onboardingFeature3,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: Image.asset(
                                  "assets/images/onboarding-feature-4.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              onboardingFeature4,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: constraints.maxWidth * 0.95,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go(RoutePath.home.path);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                          elevation: 6,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(11)))),
                      child: const Text(
                        "Get Started!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}
