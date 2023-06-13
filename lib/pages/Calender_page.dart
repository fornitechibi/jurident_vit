import 'package:flutter/material.dart';
import 'package:juridentt/widgets/schedule_card2.dart';
import 'package:juridentt/widgets/time_card.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender_page extends StatefulWidget {
  String quantity;
  String left;
  String name;
  String date;
  String time;

  Calender_page(
      {super.key,
      required this.left,
      required this.quantity,
      required this.date,
      required this.name,
      required this.time});

  @override
  State<Calender_page> createState() => _Calender_pageState();
}

class _Calender_pageState extends State<Calender_page> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              transform: Matrix4.translationValues(-80, 80, 0),
              child: Text("2023 Apr",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            Container(
              transform: Matrix4.translationValues(0, 100, 0),
              child: TableCalendar(
                  focusedDay: today,
                  firstDay: DateTime.utc(2010, 1, 1),
                  lastDay: DateTime.utc(2040, 1, 1)),
            ),
            Container(
              transform: Matrix4.translationValues(0, 100, 0),
              child: Text(
                "Task Overview",
                textAlign: TextAlign.center,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Timecard(
                    left: widget.left,
                    quantity: widget.quantity,
                  ),
                  Timecard(
                    left: widget.left,
                    quantity: widget.quantity,
                  ),
                  Timecard(
                    left: widget.left,
                    quantity: widget.quantity,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  transform: Matrix4.translationValues(10, 100, 0),
                  child: Text(
                    "Schedule",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Satoshi',
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(180, 100, 0),
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 20,
                      color: Colors.transparent,
                      shadows: [
                        Shadow(offset: Offset(0, -5), color: Color(0xffC99F4A))
                      ],
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      decorationColor: Color(0xffC99F4A),
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Transform(
                transform: Matrix4.translationValues(0, 70, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Schedulecard2(
                      name: widget.name,
                      date: widget.date,
                      time: widget.time,
                    ),
                    Schedulecard2(
                      name: widget.name,
                      date: widget.date,
                      time: widget.time,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
