import 'package:flutter/material.dart';
import 'package:juridentt/features/CaseNotes/CaseNotes.dart';
// import 'package:juridentt/features/CaseNotes/caseNotes.dart';
import 'package:juridentt/provider.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'features/hamburgerMenu/hamburgerIcon.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(color: themeProvider.isDarkMode?darkModeButtonColor:backColor),
        centerTitle: true,
        backgroundColor: Colors.white,
        
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: themeProvider.isDarkMode?darkModeButtonColor:backColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Container(
                  // width: 35,
                  decoration: BoxDecoration(
                    // color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: themeProvider.isDarkMode?darkModeButtonColor:backColor,
                  )),
            ),
          ),
        ],
      ),
        drawer:const HamburgerIcon(),
        body: const Column(
          children: [
            Center(child: CaseNote())
          ],
        ),
      ),
    );
  }
}