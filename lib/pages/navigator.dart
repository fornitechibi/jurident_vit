import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juridentt/pages/Landing_page1.dart';
import 'package:juridentt/pages/Myfile.dart';
import 'package:juridentt/widgets/navbar_widget.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => const Landing_page1());
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/button.png"))),
                child: const Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Text(
                    "button1",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const Myfiles());
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/button.png"))),
                child: const Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Text(
                    "button2",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const NavbarWidget()
          ],
        ),
      ),
    );
  }
}
