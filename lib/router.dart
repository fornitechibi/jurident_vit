import 'package:flutter/material.dart';
import 'package:juridentt/home.dart';
import 'features/teams/accesspage.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case TeamsPage.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const homescreen(),
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
