import 'package:flutter/material.dart';
// import 'package:jurident/models/case_details.dart';
import 'package:jurident/screens/aboutusScreen.dart';
import 'package:jurident/screens/case_details_screen.dart';
import 'package:jurident/screens/contact_us_screen.dart';
import 'package:jurident/screens/dashboard.dart';
import 'package:jurident/screens/terms_and_conditions_screen.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  bool isDarkModeEnabled = false;
  bool isNotificationsEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF050125),
        centerTitle: true,
        title: const Text('JURIDENT'),
        actions: [
          IconButton(onPressed: (() {}), icon: Icon(Icons.notifications_none))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF050125),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Terms and Conditions',
              ),
              onTap: () {
                Navigator.of(context).pushNamed(TermsAndConditions.routeName);
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                Navigator.of(context).pushNamed(AboutUsScreen.routeName);
              },
            ),
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: isDarkModeEnabled,
              onChanged: (value) {},
            ),
            SwitchListTile(
              title: const Text('Notifacations'),
              value: isNotificationsEnabled,
              onChanged: (value) {},
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.of(context).pushNamed(ContactUsScreen.routeName);
              },
            ),
            ListTile(
              title: const Text('Support Chat'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('FAQ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Feedback'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                );
              },
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1.0,
              indent: 16.0,
              endIndent: 16.0,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              tileColor: Color(0xFF050125),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            height: 180,
            color: Color(0xFF050125),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Image.asset(
                  'assets/images/jd.png',
                  width: 215,
                  height: 126,
                  fit: BoxFit.cover,
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text('Welcome to the Lawyer App!',
                style: Theme.of(context).textTheme.bodyText2),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                CaseDetails caseDetails = CaseDetails(
                  caseType: 'Type',
                  caseNumber: 'Number',
                  name: 'John Doe',
                  date: DateTime.now(),
                  courtName: 'Court',
                  nextHearingDate: DateTime.now(),
                  partyContactNumber: 'Contact',
                  adversePartyName: 'Adverse Party',
                  adversePartyContactNumber1: 'Contact 1',
                  adversePartyLawyerName: 'Lawyer',
                  adversePartyContactNumber2: 'Contact 2',
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CaseDetailsScreen(
                      caseDetails: caseDetails,
                    ),
                  ),
                );
              },
              child: Text('Enter Case Details'),
            ),
          ),
        ],
      ),
    );
  }
}
