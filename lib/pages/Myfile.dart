import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:juridentt/pages/schedule_page2.dart';
import 'package:juridentt/pages/temp.dart';
import 'package:juridentt/widgets/Case_card2.dart';
import 'package:juridentt/widgets/case_card.dart';

class Myfiles extends StatefulWidget {
  const Myfiles({super.key});

  @override
  State<Myfiles> createState() => _MyfilesState();
}

class _MyfilesState extends State<Myfiles> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Transform(
                transform: Matrix4.translationValues(0, 10, 0),
                child: Text(
                  "JURIDENT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffC99F4A),
                    fontSize: 30,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(-130, 25, 0),
                child: Text(
                  "My Files",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffC99F4A),
                    fontSize: 26,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                height: size.height,
                width: size.width,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0, color: Color(0xFFFAFAFA)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          transform: Matrix4.translationValues(20, 30, 0),
                          width: 123,
                          height: 38,
                          decoration: ShapeDecoration(
                            color: Color(0xFFC99F4A),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFC99F4A)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Image.asset("assets/images/bookmark.png"),
                              SizedBox(width: 10),
                              Text(
                                'Bookmarks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 80),
                        Container(
                          transform: Matrix4.translationValues(20, 30, 0),
                          width: 75,
                          height: 38,
                          decoration: ShapeDecoration(
                            color: Color(0xFFC99F4A),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFC99F4A)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Image.asset("assets/images/filter.png"),
                              SizedBox(width: 6),
                              Text(
                                'Filter',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(40, 30, 0),
                          width: 75,
                          height: 38,
                          decoration: ShapeDecoration(
                            color: Color(0xFFC99F4A),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFC99F4A)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Image.asset("assets/images/sort.png"),
                              SizedBox(width: 6),
                              Text(
                                'Sort',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      children: [
                        Container(
                          height: size.height,
                          width: size.width,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              side:
                                  BorderSide(width: 0.50, color: Colors.black),
                            ),
                          ),
                          child: Flexible(
                            flex: 1,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 8,
                                itemBuilder: (context, index) => Casecard2()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
