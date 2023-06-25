import 'package:flutter/material.dart';

class CaseDetails extends StatelessWidget {
  final String caseType;
  final String caseNumber;
  final String name;
  final DateTime date;
  final String courtName;
  final DateTime nextHearingDate;
  final String partyContactNumber;
  final String adversePartyName;
  final String adversePartyContactNumber1;
  final String adversePartyLawyerName;
  final String adversePartyContactNumber2;

  CaseDetails({
    required this.caseType,
    required this.caseNumber,
    required this.name,
    required this.date,
    required this.courtName,
    required this.nextHearingDate,
    required this.partyContactNumber,
    required this.adversePartyName,
    required this.adversePartyContactNumber1,
    required this.adversePartyLawyerName,
    required this.adversePartyContactNumber2,
  });

  @override
  Widget build(BuildContext context) {
    return CaseDetailsScreen(
      caseDetails: this,
    );
  }
}

class CaseDetailsScreen extends StatelessWidget {
  final CaseDetails caseDetails;

  CaseDetailsScreen({required this.caseDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF050125),
        title: Text('Case Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Case Type: ${caseDetails.caseType}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Case Number: ${caseDetails.caseNumber}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Name: ${caseDetails.name}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Date: ${caseDetails.date.toString()}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Court Name: ${caseDetails.courtName}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Next Hearing Date: ${caseDetails.nextHearingDate.toString()}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Party Contact Number: ${caseDetails.partyContactNumber}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Adverse Party Name: ${caseDetails.adversePartyName}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Adverse Party Contact Number : ${caseDetails.adversePartyContactNumber1}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Adverse Party Lawyer Name: ${caseDetails.adversePartyLawyerName}',
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
                'Adverse Party Contact Number : ${caseDetails.adversePartyContactNumber2}'

                // style: TextStyle(fontWeight: FontWeight.bold),
                ),
            const SizedBox(
              height: 20,
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 55,
                    width: 171,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 13.0,
                          horizontal: 18.0,
                        ),
                        backgroundColor: Color(0xD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit Case Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: SizedBox(
                    height: 55,
                    width: 152,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 13.0,
                          horizontal: 18.0,
                        ),
                        backgroundColor: Color(0xD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        // Perform action when "Allow Access" button is pressed
                      },
                      child: const Text(
                        'Allow Access',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
