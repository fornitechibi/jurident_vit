import 'package:flutter/material.dart';
import 'package:juridentt/features/hamburgerMenu/hamburgerIcon.dart';
import 'package:juridentt/home.dart';
import 'package:juridentt/home.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
      case HamburgerIcon.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HamburgerIcon(),
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
