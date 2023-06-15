import 'package:flutter/material.dart';
import 'package:juridentt/widgets/case_card.dart';

class Landing_page3 extends StatefulWidget {
  int case_num;
  String case_name;
  String party_name;

  Landing_page3(
      {super.key,
      required this.case_name,
      required this.case_num,
      required this.party_name});

  @override
  State<Landing_page3> createState() => _Landing_page3State();
}

class _Landing_page3State extends State<Landing_page3> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
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
                Container(
                  transform: Matrix4.translationValues(-130, -190, 0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("lib/assets/images/Rectangle_amber.png"),
                    ),
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(65, 195, 0),
                  child: Text("3",
                      style: TextStyle(
                        color: Colors.black,
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
                        color: Colors.black,
                        fontFamily: 'Satoshi',
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                      )),
                ),
                Container(
                  transform: Matrix4.translationValues(0, -190, 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("lib/assets/images/Rectangle .png"))),
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
                  transform: Matrix4.translationValues(130, -190, 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("lib/assets/images/Rectangle .png"))),
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
                Container(
                  transform: Matrix4.translationValues(0, 210, 0),
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/assets/images/Rectangle_p3.png"))),
                ),
                Transform(
                  transform: Matrix4.translationValues(0, 360, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Casecard(
                          case_name: widget.case_name,
                          party_name: widget.party_name,
                          case_num: widget.case_num),
                      Casecard(
                          case_name: widget.case_name,
                          party_name: widget.party_name,
                          case_num: widget.case_num)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
