import 'package:flutter/material.dart';
import 'package:juridentt/features/CaseNotes/CaseNotes.dart';
import 'package:juridentt/features/hamburgerMenu/aboutUs.dart';
import 'package:juridentt/features/hamburgerMenu/faq.dart';
import 'package:juridentt/features/hamburgerMenu/feedback.dart';
// import 'package:juridentt/features/CaseNotes/caseNotes.dart';
import 'package:juridentt/features/hamburgerMenu/hamburgerIcon.dart';
import 'package:juridentt/features/hamburgerMenu/notification.dart';
import 'package:juridentt/features/hamburgerMenu/terms.dart';
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
      case CaseNote.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CaseNote(),
      );
      case TermsAndConditions.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const TermsAndConditions(),
      );
      case AboutUsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AboutUsScreen(),
      );
      case FeedbackPage.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const FeedbackPage(),
      );
      case FAQ.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const FAQ(),
      );
      case newCases.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const newCases(),
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
