import 'package:flutter/material.dart';

class SharedfileWidget extends StatefulWidget {
  const SharedfileWidget({super.key});

  @override
  State<SharedfileWidget> createState() => _SharedfileWidgetState();
}

class _SharedfileWidgetState extends State<SharedfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Stack(
            children: [
              Container(
                height: 227,
                width: 383,

                //margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffD7FACE)),
              ),
              Transform(
                  transform: Matrix4.translationValues(10, 15, 0),
                  child: Image.asset("assets/images/Group_logo.png")),
              Transform(
                transform: Matrix4.translationValues(50, 15, 0),
                child: Text(
                  "Family Case Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 22,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Transform(
                  transform: Matrix4.translationValues(280, 20, 0),
                  child: Image.asset("assets/images/case_logo2.png")),
              Transform(
                  transform: Matrix4.translationValues(20, 70, 0),
                  child: Image.asset("assets/images/profile.png")),
              Transform(
                transform: Matrix4.translationValues(90, 80, 0),
                child: Text(
                  "Rodney Artichoke",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(90, 110, 0),
                child: Text(
                  "Lawyer id : 12345a6",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Satoshi',
                    fontSize: 11,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(20, 140, 0),
                child: Text(
                  "Email : Example@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(200, 140, 0),
                child: Text(
                  "Case Number : 24-AF-1-DHHH",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(20, 165, 0),
                child: Text(
                  "Case Name : Family case",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(200, 165, 0),
                child: Text(
                  "Party Name : Abinav",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(10, 190, 0),
                child: SizedBox(
                  height: 24,
                  width: 115,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/download.png",
                          color: Colors.black,
                        ),
                        const Text(
                          "Download Info",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Satoshi',
                            fontSize: 9.7,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(280, 190, 0),
                child: SizedBox(
                  height: 24,
                  width: 88,
                  child: ElevatedButton(
                    onPressed: () {
                      print("prssed");
                    },
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Text(
                      "View",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Satoshi',
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
