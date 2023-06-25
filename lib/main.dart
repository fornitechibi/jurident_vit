import 'package:flutter/material.dart';
import 'package:jurident/models/Landingpage3.dart';
import 'package:jurident/screens/aboutusScreen.dart';
import 'package:jurident/screens/contact_us_screen.dart';
// import 'package:jurident/screens/mainscreen.dart';
import 'package:jurident/screens/terms_and_conditions_screen.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'JURIDENT',
        theme: ThemeData(
          fontFamily: 'Poppins',
          // brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF050125), // Dark Grey
          ),
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        // ),
        home: Landing_page1(),
        routes: {
          TermsAndConditions.routeName: (context) => TermsAndConditions(),
          AboutUsScreen.routeName: (context) => AboutUsScreen(),
          ContactUsScreen.routeName: (context) => ContactUsScreen(),
        });
  }
}
