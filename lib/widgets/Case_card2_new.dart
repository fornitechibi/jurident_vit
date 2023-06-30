import 'package:flutter/material.dart';
//import 'package:juridentt/widgets/Alert_bookmark.dart';

class NewCasecard2 extends StatefulWidget {
  const NewCasecard2({super.key});

  @override
  State<NewCasecard2> createState() => _NewCasecard2State();
}

class _NewCasecard2State extends State<NewCasecard2> {
  final yellow = const Color(0xFFC99F4A);
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Stack(
            children: [
              Container(
                width: 383,
                height: 229,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
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
                transform: Matrix4.translationValues(20, 10, 0),
                child: const Text(
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
              Transform(
                transform: Matrix4.translationValues(250, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    print("prssed");
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(87.96, 24.91),
                      backgroundColor: yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 5),
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
              Transform(
                transform: Matrix4.translationValues(335, 0, 0),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: const Text(
                            'Bookmarked Succesfully',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          backgroundColor: yellow,
                        ),
                      );
                      isBookmarked = !isBookmarked;
                    });
                  },
                  icon: const Icon(Icons.bookmark_add_outlined),
                  color: isBookmarked ? yellow : Colors.black,
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(20, 55, 0),
                child: Image.asset("assets/images/user-circle.png"),
              ),
              Container(
                  transform: Matrix4.translationValues(95, 65, 0),
                  child: const Text(
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
                  transform: Matrix4.translationValues(95, 90, 0),
                  child: const Text(
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
                  transform: Matrix4.translationValues(40, 120, 0),
                  child: const Text(
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
                  transform: Matrix4.translationValues(40, 140, 0),
                  child: const Text(
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
                  transform: Matrix4.translationValues(40, 160, 0),
                  child: const Text(
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
                  transform: Matrix4.translationValues(40, 180, 0),
                  child: const Text(
                    "Party Name:",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Satoshi',
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    ),
                  )),
              Transform(
                transform: Matrix4.translationValues(250, 40, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(117.68, 25),
                      backgroundColor: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/download.png",
                        ),
                        const Text(
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
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(240, 90, 0),
                height: 111,
                width: 131.38,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/case_image.png"))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
