import 'package:flutter/material.dart';
import 'package:juridentt/provider.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  static const routeName = '/terms&conditions';

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: themeProvider.isDarkMode?darkModeButtonColor:backColor),
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFFC99F4A),
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            height: 180,
            color: Color(0xFF050125),
            child: Row(
              children: [
                Container(
                  width: 200,
                  height: 126,
                  child: Image.asset(
                    '/home/sinjin/jurident_vit/lib/assets/Group 33622.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFFC99F4A),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
            ),
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla, suscipit recusandae fugit cum maxime laboriosam magnam ex at eos',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '2. Privacy Policy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color(0xFFC99F4A),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla,',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla,',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt delectus rerum provident, ea iste quas explicabo est placeat qui quia, perspiciatis obcaecati! Esse perferendis officiis, velit dicta tempora laborum eos dignissimos magni minima earum excepturi voluptatem necessitatibus facere deleniti iust',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla,',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}