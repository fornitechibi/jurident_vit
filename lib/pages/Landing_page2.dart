import 'package:flutter/material.dart';

class Landing_page2 extends StatefulWidget {
  const Landing_page2({super.key});

  @override
  State<Landing_page2> createState() => _Landing_page2State();
}

class _Landing_page2State extends State<Landing_page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle .png"))),
        ),
      ),
    );
  }
}
