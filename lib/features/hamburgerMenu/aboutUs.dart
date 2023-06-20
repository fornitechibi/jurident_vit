import 'package:flutter/material.dart';


class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  static const routeName = '/Aboutus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About Us'),
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.notifications_none,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 215,
                  height: 126,
                  child: Image.asset(
                    'assets/images/jd.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
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
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum natustemporibus odio rerum. Eveniet, aperiam atque. Aperiam excepturi voluptates sint, asperiores ipsum nulla, suscipit recusandae fugit cum maxime laboriosam magnam ex at eos',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'GOAL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color(0xFFC99F4A),
                  ),
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