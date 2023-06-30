
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juridentt/pages/Landing_page3.dart';
import 'package:juridentt/pages/Landing_page4.dart';
import 'package:juridentt/pages/Landing_page5.dart';
// import 'package:juridentt/pages/login_page.dart';
// import 'package:juridentt/widgets/case_card.dart';

class Landing_page1 extends StatefulWidget {
  const Landing_page1({super.key});

  @override
  State<Landing_page1> createState() => _Landing_page1State();
}

class _Landing_page1State extends State<Landing_page1> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
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
                      Get.to(
                          () => Landing_page3(
                              case_name: "murder",
                              case_num: 1234,
                              party_name: "bjp"),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Rectangle .png"))),
                      child: const Column(
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
                          Text("Open\nCases",
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
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                          () => Landing_page4(
                              case_name: "murder",
                              case_num: 1234,
                              party_name: "bjp"),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Rectangle .png"))),
                      child: const Column(
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
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                          () => Landing_page5(
                              case_name: "murder",
                              case_num: 1234,
                              party_name: "bjp"),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Rectangle .png"))),
                      child: const Column(
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
          ],
        ),
      ),
    );
  }
}
