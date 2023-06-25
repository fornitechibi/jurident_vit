import 'package:flutter/material.dart';
import '../models/Landingpage3.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 85),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "JURIDENT",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 400, // Set a fixed height for the container
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Landing_page1(),
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
                              color: Colors.black,
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
                              color: Color(0xFF010125),
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
                                imagePath: 'assets/icons/allcases.png',
                                label: 'All Cases',
                                onTap: () {},
                              ),
                              QuickAccessButton(
                                imagePath: 'assets/icons/addcase.png',
                                label: 'Add Case',
                                onTap: () {},
                              ),
                              QuickAccessButton(
                                imagePath: 'assets/icons/tasks.png',
                                label: 'Tasks',
                                onTap: () {},
                              ),
                              QuickAccessButton(
                                imagePath: 'assets/icons/sharedfiles.png',
                                label: 'Shared Files',
                                onTap: () {},
                              ),
                              QuickAccessButton(
                                imagePath: 'assets/icons/events.png',
                                label: 'Events',
                                onTap: () {},
                              ),
                              QuickAccessButton(
                                imagePath: 'assets/icons/faq.png',
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
          ],
        ),
      ),
    );
  }
}

class QuickAccessButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  const QuickAccessButton({
    required this.imagePath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        side: BorderSide(
          color: Color(0xFF010125),
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
