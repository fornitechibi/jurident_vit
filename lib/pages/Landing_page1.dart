import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juridentt/pages/Landing_page3.dart';
import 'package:juridentt/pages/Landing_page4.dart';
import 'package:juridentt/widgets/case_card.dart';

class Landing_page1 extends StatefulWidget {
  const Landing_page1({super.key});

  @override
  State<Landing_page1> createState() => _Landing_page1State();
}

class _Landing_page1State extends State<Landing_page1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  transform: Matrix4.translationValues(130, 100, 0),
                  child: Text(
                    "JURIDENT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Landing_page3(
                                case_name: "murder",
                                case_num: 1234,
                                party_name: "bjp")));
                  },
                  child: Container(
                    transform: Matrix4.translationValues(-120, 200, 0),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFF050125),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 3,
                          color: Color(0xFF050125),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("3",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.amber,
                                fontFamily: 'Satoshi',
                                fontSize: 36,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Text("Open\nCases",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'Satoshi',
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  transform: Matrix4.translationValues(-120, 200, 0),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Color(0xFF050125),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 3,
                        color: Color(0xFF050125),
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("2",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'Satoshi',
                              fontSize: 36,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Text("Closed\nCases",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.amber,
                            fontFamily: 'Satoshi',
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          )),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  transform: Matrix4.translationValues(-120, 200, 0),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Color(0xFF050125),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 3,
                        color: Color(0xFF050125),
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("4",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'Satoshi',
                              fontSize: 36,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Text("Upcoming\nCases",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.amber,
                            fontFamily: 'Satoshi',
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
