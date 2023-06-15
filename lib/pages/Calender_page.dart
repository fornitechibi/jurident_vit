import 'package:flutter/material.dart';
import 'package:juridentt/widgets/schedule_card2.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender_page extends StatefulWidget {
  String name;
  String date;
  String time;

  Calender_page(
      {super.key, required this.date, required this.name, required this.time});

  @override
  State<Calender_page> createState() => _Calender_pageState();
}

class _Calender_pageState extends State<Calender_page> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //backgroundColor: Colors.blueGrey,
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
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 144,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Color(0xffC99F4A)),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              transform: Matrix4.translationValues(30, 40, 0),
                              child: Text(
                                "Total",
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
                              transform: Matrix4.translationValues(35, 50, 0),
                              child: Text(
                                "20",
                                style: TextStyle(
                                  color: Color(0xffC99F4A),
                                  fontFamily: 'Satoshi',
                                  fontSize: 30,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 144,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Color(0xffC99F4A)),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              transform: Matrix4.translationValues(35, 40, 0),
                              child: Text(
                                "Left",
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
                              transform: Matrix4.translationValues(35, 50, 0),
                              child: Text(
                                "20",
                                style: TextStyle(
                                  color: Color(0xffC99F4A),
                                  fontFamily: 'Satoshi',
                                  fontSize: 30,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 144,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Color(0xffC99F4A)),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              transform: Matrix4.translationValues(30, 40, 0),
                              child: Text(
                                "Done",
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
                              transform: Matrix4.translationValues(35, 50, 0),
                              child: Text(
                                "20",
                                style: TextStyle(
                                  color: Color(0xffC99F4A),
                                  fontFamily: 'Satoshi',
                                  fontSize: 30,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
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
                    ),
                    Schedulecard2(
                      name: widget.name,
                      date: widget.date,
                      time: widget.time,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  transform: Matrix4.translationValues(10, 0, 0),
                  child: Text(
                    "Upcoming Schedule",
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
                  transform: Matrix4.translationValues(70, 0, 0),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
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
                    ),
                    Schedulecard2(
                      name: widget.name,
                      date: widget.date,
                      time: widget.time,
                    ),
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
