import 'package:flutter/material.dart';
import 'package:juridentt/constants.dart';
import 'package:juridentt/provider.dart';
import 'package:provider/provider.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  static const routeName = '/Aboutus';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final themeProvider = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: darkModeButtonColor),
        backgroundColor: themeProvider.isDarkMode?backColor:Colors.white,
        centerTitle: true,
        title:  Text('About Us',style: TextStyle(color: darkModeButtonColor),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: darkModeButtonColor,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.5,
                  height: screenHeight * 0.2,
                  child: Image.asset(
                    '/home/sinjin/jurident_vit/lib/assets/Group 33622.png',
                    fit: BoxFit.cover,
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
              height: screenHeight*0.625,
              color: themeProvider.isDarkMode?Colors.white:backColor,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VISION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color(0xFFC99F4A),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla, suscipit recusandae fugit cum maxime laboriosam magnam ex at eos',
                    textAlign: TextAlign.justify,
                     style: TextStyle(color: themeProvider.isDarkMode?Colors.black:Colors.white),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'GOAL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color(0xFFC99F4A),
                    ),
                  ),
                  const SizedBox(height: 10),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}