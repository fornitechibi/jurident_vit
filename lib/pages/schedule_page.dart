import 'package:flutter/material.dart';
import 'package:juridentt/widgets/schedule_card.dart';

// ignore: must_be_immutable
class Schedule_page extends StatefulWidget {
  String name;
  String date;
  String time;
  Schedule_page(
      {super.key, required this.date, required this.name, required this.time});

  @override
  State<Schedule_page> createState() => _Schedule_pageState();
}

class _Schedule_pageState extends State<Schedule_page> {
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
                child: const Text(
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
              Transform(
                transform: Matrix4.translationValues(0, 100, 0),
                child: Column(
                  children: [
                    Schedulecard(
                      name: widget.name,
                      date: widget.date,
                      time: widget.time,
                    ),
                    Schedulecard(
                      name: widget.name,
                      date: widget.date,
                      time: widget.time,
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform(
                    transform: Matrix4.translationValues(50, 300, 0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFC99F4A),
                            fixedSize: const Size(300, 70),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          "Clear Schedule",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Satoshi',
                            fontSize: 22,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
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
