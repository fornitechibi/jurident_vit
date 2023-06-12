import 'package:flutter/material.dart';

import 'onboarding/onboarding1.dart';
import 'onboarding/onboarding2.dart';
import 'onboarding/onboarding3.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case '/':
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => OnboardingScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var tween = Tween(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
  case '/second':
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => OnboardingScreen2(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var tween = Tween(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    case '/third':
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => OnboardingScreen3(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var tween = Tween(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
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
