import 'package:flutter/material.dart';
import 'package:juridentt/constants.dart';
import 'package:provider/provider.dart';

import '../../provider.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  static const routeName = '/terms&conditions';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final themeProvider = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: themeProvider.isDarkMode?backColor:Colors.white,
        iconTheme: IconThemeData(color: darkModeButtonColor),
        // title: Text("Ter"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFFC99F4A),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            width: screenWidth,
            height: screenHeight * 0.25,
            color: themeProvider.isDarkMode?backColor:Colors.white,
            child: Row(
              children: [
                Container(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.4,
                  child: Image.asset(
                    '/home/sinjin/jurident_vit/lib/assets/Group 33622.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFFC99F4A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
             topRight: Radius.circular(20.0),
            ),
            child: Container(
              color: themeProvider.isDarkMode?Colors.white:backColor,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Terms and Conditions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color(0xFFC99F4A),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla, suscipit recusandae fugit cum maxime laboriosam magnam ex at eos',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: themeProvider.isDarkMode?Colors.black:Colors.white),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '2. Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color(0xFFC99F4A),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla,',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: themeProvider.isDarkMode?Colors.black:Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla,',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: themeProvider.isDarkMode?Colors.black:Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt delectus rerum provident, ea iste quas explicabo est placeat qui quia, perspiciatis obcaecati! Esse perferendis officiis, velit dicta tempora laborum eos dignissimos magni minima earum excepturi voluptatem necessitatibus facere deleniti iust',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: themeProvider.isDarkMode?Colors.black:Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla,',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: themeProvider.isDarkMode?Colors.black:Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}