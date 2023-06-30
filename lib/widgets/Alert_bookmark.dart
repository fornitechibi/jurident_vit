import 'package:flutter/material.dart';

class AlertBookmark extends StatefulWidget {
  const AlertBookmark({super.key});

  @override
  State<AlertBookmark> createState() => _AlertBookmarkState();
}

class _AlertBookmarkState extends State<AlertBookmark> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 440, right: 80, left: 80, bottom: 400),
        child: Container(
          width: 159,
          height: 45,
          padding: const EdgeInsets.only(top: 15),
          decoration: ShapeDecoration(
            color: const Color(0xFFC99F4A),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Bookmarked Succesfully',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
