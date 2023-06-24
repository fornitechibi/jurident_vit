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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0, top: 80),
                child: Text(
                  "Jurident",
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
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle_amber.png"))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Satoshi',
                                  fontSize: 33,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("Open\nCases",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Satoshi',
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: () {
                        print("prssed");
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle .png"))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontFamily: 'Satoshi',
                                  fontSize: 33,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("Closed\nCases",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontFamily: 'Satoshi',
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: () {
                        print("prssed");
                      },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle .png"))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontFamily: 'Satoshi',
                                  fontSize: 33,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("Upcoming\nCases",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontFamily: 'Satoshi',
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    transform: Matrix4.translationValues(0, -120, 0),
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/Rectangle_p3.png"))),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, index) => Casecard(
                              case_name: widget.case_name,
                              party_name: widget.party_name,
                              case_num: widget.case_num),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
