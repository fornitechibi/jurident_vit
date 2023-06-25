import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juridentt/pages/Myfile.dart';

import '../widgets/Case_card2_new.dart';

class BookmarksPage2 extends StatefulWidget {
  const BookmarksPage2({super.key});

  @override
  State<BookmarksPage2> createState() => _BookmarksPage2State();
}

class _BookmarksPage2State extends State<BookmarksPage2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                  " Book Marks",
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
                height: 101,
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
                        Transform(
                          transform: Matrix4.translationValues(20, 30, 0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fixedSize: Size(127, 38),
                                backgroundColor: Color(0xFFC99F4A)),
                            child: Row(
                              children: [
                                Image.asset("assets/images/bookmark.png"),
                                SizedBox(
                                  width: 7,
                                ),
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
                        ),
                        SizedBox(width: 80),
                        Transform(
                          transform: Matrix4.translationValues(10, 30, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(90, 38),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFFC99F4A)),
                            onPressed: () {},
                            child: Row(
                              children: [
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
                        ),
                        Transform(
                          transform: Matrix4.translationValues(15, 30, 0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(90, 38),
                                backgroundColor: Color(0xFFC99F4A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: Row(
                              children: [
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 428,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Container(
                          child: Image.asset("assets/images/nofiles.png")),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'No Files Found',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFC99F4A),
                        fontSize: 30,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(127, 26),
                          backgroundColor: Color(0xFFC99F4A)),
                      onPressed: () {
                        Get.to(() => Myfiles());
                      },
                      child: Text(
                        'Files',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
