import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juridentt/pages/Landing_page1.dart';

import 'Landing_page3.dart';
import 'Landing_page4.dart';
import 'Landing_page5.dart';

class DashboardPage extends StatelessWidget {
  final yellow = Color(0xffC99F4A);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(top: 85),
        child: Container(
          height: size.height,
          color: Colors.black, // Set a fixed height for the container
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 30),
                        child: Text(
                          "JURIDENT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, top: 30),
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
                                    duration: Duration(seconds: 1));
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
                                          color: yellow,
                                          fontFamily: 'Satoshi',
                                          fontSize: 33,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("Open\nCases",
                                        style: TextStyle(
                                          color: yellow,
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
                                Get.to(
                                    () => Landing_page4(
                                        case_name: "murder",
                                        case_num: 1234,
                                        party_name: "bjp"),
                                    transition: Transition.fade,
                                    duration: Duration(seconds: 1));
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
                                          color: yellow,
                                          fontFamily: 'Satoshi',
                                          fontSize: 33,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("Closed\nCases",
                                        style: TextStyle(
                                          color: yellow,
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
                                Get.to(
                                    () => Landing_page5(
                                        case_name: "murder",
                                        case_num: 1234,
                                        party_name: "bjp"),
                                    transition: Transition.fade,
                                    duration: Duration(seconds: 1));
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
                                          color: yellow,
                                          fontFamily: 'Satoshi',
                                          fontSize: 33,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("Upcoming\nCases",
                                        style: TextStyle(
                                          color: yellow,
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
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      border: Border.all(
                        color: yellow,
                        width: 1,
                      ),
                      color: const Color(0xFF050125),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Quick Access',
                        style: TextStyle(
                          color: const Color(0xFFC99F4A),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(
                        color: yellow,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 30.0,
                      crossAxisSpacing: 15.0,
                      children: [
                        QuickAccessButton(
                          imagePath: 'assets/images/icons/allcases.png',
                          label: 'All Cases',
                          onTap: () {},
                        ),
                        QuickAccessButton(
                          imagePath: 'assets/images/icons/addcase.png',
                          label: 'Add Case',
                          onTap: () {},
                        ),
                        QuickAccessButton(
                          imagePath: 'assets/images/icons/tasks.png',
                          label: 'Tasks',
                          onTap: () {},
                        ),
                        QuickAccessButton(
                          imagePath: 'assets/images/icons/sharedfiles.png',
                          label: 'Shared Files',
                          onTap: () {},
                        ),
                        QuickAccessButton(
                          imagePath: 'assets/images/icons/events.png',
                          label: 'Events',
                          onTap: () {},
                        ),
                        QuickAccessButton(
                          imagePath: 'assets/images/icons/faq.png',
                          label: 'FAQ',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuickAccessButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  QuickAccessButton({
    required this.imagePath,
    required this.label,
    required this.onTap,
  });

  final yellow = Color(0xffC99F4A);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        side: BorderSide(
          color: yellow,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 27.0,
            height: 27.0,
          ),
          SizedBox(height: 8.0),
          Text(
            label,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
