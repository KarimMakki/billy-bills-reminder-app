import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    if (context.mounted) {
      Timer(const Duration(seconds: 3), () {
        print("loading done");
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
              child: Image.asset("assets/images/billy-logo-1.0.png",
                  height: constraints.maxHeight * 0.4,
                  width: constraints.maxWidth * 0.4));
        },
      ),
    );
  }
}
