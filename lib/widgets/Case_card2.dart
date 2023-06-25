import 'package:flutter/material.dart';

class Casecard2 extends StatefulWidget {
  const Casecard2({super.key});

  @override
  State<Casecard2> createState() => _Casecard2State();
}
//! there are 2 case cards available for use,use New case card 2 for better results

class _Casecard2State extends State<Casecard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            width: 383,
            height: 229,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50),
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(-80, -210, 0),
            child: Text(
              "Divorce Case Details",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Satoshi',
                fontSize: 22,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("pressed");
            },
            child: Container(
              transform: Matrix4.translationValues(95, -240, 0),
              width: 87.96,
              height: 24.91,
              decoration: BoxDecoration(
                  color: Color(0xFFC99F4A),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "View",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(160, -295, 0),
            height: 80,
            width: 110,
            child: Icon(
              Icons.bookmark_add_outlined,
              color: Colors.black,
            ),
          ),
          Container(
            transform: Matrix4.translationValues(110, -310, 0),
            width: 114.68,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Image.asset(
                      "assets/images/download.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Download Info",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFC99F4A),
                        fontFamily: 'Satoshi',
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform(
            transform: Matrix4.translationValues(-140, -330, 0),
            child: Image.asset("assets/images/user-circle.png"),
          ),
          Container(
              transform: Matrix4.translationValues(-65, -380, 0),
              child: Text(
                "Sr Lawyer1",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              transform: Matrix4.translationValues(-60, -375, 0),
              child: Text(
                "+91 9876543210",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              )),
          Container(
              transform: Matrix4.translationValues(-140, -350, 0),
              child: Text(
                "Email:",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              )),
          Container(
              transform: Matrix4.translationValues(-120, -340, 0),
              child: Text(
                "Case Number:",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              )),
          Container(
              transform: Matrix4.translationValues(-125, -330, 0),
              child: Text(
                "Case Name:",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              )),
          Container(
              transform: Matrix4.translationValues(-125, -320, 0),
              child: Text(
                "Party Name:",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              )),
          Container(
            transform: Matrix4.translationValues(110, -440, 0),
            height: 111,
            width: 131.38,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/case_image.png"))),
          ),
          // InkWell(
          //   onTap: () {
          //     print("shibi");
          //   },
          //   child: Container(
          //     transform: Matrix4.translationValues(0, -300, 0),
          //     height: 200,
          //     width: 300,
          //     decoration: BoxDecoration(color: Colors.green),
          //   ),
          // )
        ],
      ),
    );
  }
}
