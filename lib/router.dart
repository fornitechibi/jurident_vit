import 'package:flutter/material.dart';

import 'onboarding/onboarding1.dart';
import 'onboarding/onboarding2.dart';
import 'onboarding/onboarding3.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => OnboardingScreen());
    case '/second':
      return MaterialPageRoute(builder: (_) => OnboardingScreen2());
    case '/third':
      return MaterialPageRoute(builder: (_) => OnboardingScreen3());

    default:
      return MaterialPageRoute(
        builder: (context) => const SafeArea(
          child: Scaffold(
            body: Center(
              child: Text(
                'wrong page',
              ),
            ),
          ),
        ),
      );
  }
}
