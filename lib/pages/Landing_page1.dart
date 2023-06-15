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
        resizeToAvoidBottomInset: false,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Container(
                transform: Matrix4.translationValues(130, 80, 0),
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
              InkWell(
                onTap: () {},
                child: Container(
                  transform: Matrix4.translationValues(-130, -170, 0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle .png"),
                    ),
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(65, 195, 0),
                child: Text("3",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'Satoshi',
                      fontSize: 33,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                transform: Matrix4.translationValues(50, 240, 0),
                child: Text("Open\nCases",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'Satoshi',
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    )),
              ),
              Container(
                transform: Matrix4.translationValues(0, -170, 0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle .png"))),
              ),
              Container(
                transform: Matrix4.translationValues(200, 195, 0),
                child: Text("2",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'Satoshi',
                      fontSize: 33,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                transform: Matrix4.translationValues(180, 240, 0),
                child: Text("Closed\nCases",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'Satoshi',
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    )),
              ),
              Container(
                transform: Matrix4.translationValues(130, -170, 0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle .png"))),
              ),
              Container(
                transform: Matrix4.translationValues(330, 195, 0),
                child: Text("4",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'Satoshi',
                      fontSize: 33,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                transform: Matrix4.translationValues(300, 240, 0),
                child: Text("Upcoming\nCases",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'Satoshi',
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
