import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key});

  static const routeName = '/contactus';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF050125),
        centerTitle: true,
        title: const Text('Contact Us'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            height: screenHeight * 0.25,
            color: Color(0xFF050125),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  child: Container(
                    width: screenWidth * 0.5,
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      'assets/images/jd.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 36, color: Color(0xFFC99F4A)),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Please choose what type of support do you need and let us know.',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.email),
                          title: Text('Email'),
                          subtitle: Text('contact@example.com'),
                          onTap: () {
                            // Handle email action
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                          subtitle: Text('+1 123-456-7890'),
                          onTap: () {
                            // Handle phone action
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.chat),
                          title: Text('Chat'),
                          subtitle: Text('Start a chat'),
                          onTap: () {
                            // Handle chat action
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.help),
                          title: Text('FAQ'),
                          subtitle: Text('Frequently Asked Questions'),
                          onTap: () {
                            // Handle FAQ action
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
