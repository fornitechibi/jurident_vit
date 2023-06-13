import 'package:flutter/material.dart';

class Schedulecard2 extends StatefulWidget {
  String name = "John Doe";
  String date = "Today";
  String time = "9:00 AM";

  Schedulecard2(
      {super.key, required this.date, required this.name, required this.time});

  @override
  State<Schedulecard2> createState() => _Schedulecard2State();
}

class _Schedulecard2State extends State<Schedulecard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 77,
              width: 221,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(width: 3, color: Color(0xFFC99F4A)),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                transform: Matrix4.translationValues(5, 20, 0),
                child: Text(
                  "${widget.name}",
                  style: TextStyle(
                    color: Color(0xFFC99F4A),
                    fontFamily: 'Satoshi',
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(50, 30, 0),
                child: Text(
                  "${widget.date}  ${widget.time}",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
