import 'package:flutter/material.dart';
import 'package:juridentt/widgets/schedule_card.dart';

class Schedule_page2 extends StatefulWidget {
  Schedule_page2({
    super.key,
  });

  @override
  State<Schedule_page2> createState() => _Schedule_page2State();
}

class _Schedule_page2State extends State<Schedule_page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                transform: Matrix4.translationValues(60, 60, 0),
                child: Text(
                  "Schedule",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(80, 350, 0),
                child: Text(
                  "No Scheduled Events",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 28,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(50, 550, 0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add Schedule",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Satoshi',
                        fontSize: 22,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFC99F4A),
                        fixedSize: const Size(300, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
