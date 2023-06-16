import 'package:flutter/material.dart';
import 'package:juridentt/provider.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class CaseNotes extends StatelessWidget {
  static const String routename = '/caseNotes';
  const CaseNotes({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final themeProvider = Provider.of<ThemeChanger>(context);
    return TextButton(
        onPressed: () {
          showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              backgroundColor: caseNotesBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              context: context,
              builder: ((context) {
                return Wrap(children: [
                  SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.014,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.311,
                              right: screenWidth * 0.311),
                          child: Divider(
                            color: darkModeButtonColor,
                            thickness: 3,
                            height: 7,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.07,
                              top: screenHeight * 0.024),
                          child: Row(
                            children: [
                              const Text(
                                "Case Notes",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                              ),
                              Container(
                                height: screenHeight * 0.04,
                                // width: screenWidth*0.0163,
                                decoration: BoxDecoration(
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : darkModeButtonColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Save as Draft",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.039,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.07,
                          ),
                          child: const Text(
                            "Abhinav's Divorce Case",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.07,
                              top: screenHeight * 0.024),
                          child: const Text(
                            "Mon 10-04-2023 | 05:30 PM",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.07,
                            right: screenWidth * 0.07,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              maxLines: 18,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                              decoration: InputDecoration(
                                fillColor: formFillColor,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                hintText:
                                    "Met with Abhinav and Dharshana for their initial consultation regarding their divorce. They have been married for 10 years and have two children together. Dharshana initiated the divorce and expressed concern about the division of assets, including the family home and retirement accounts. Abhinav expressed concern about maintaining a relationship with their children and requested joint custody. We discussed the divorce process and the different options available, including mediation and collaborative divorce. I provided them with referrals for a financial planner and a mediator, and we scheduled a follow-up appointment to continue the discussion.",
                                hintStyle: const TextStyle(color: Colors.white),
                                // contentPadding:
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.016,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.07,
                              right: screenWidth * 0.07),
                          child: Container(
                            decoration: BoxDecoration(
                                color: formFillColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "B",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "/",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "U",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    )),
                                // Spacer(),
                                SizedBox(
                                  width: screenWidth * 0.067,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red),
                                    child: const Text(""),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.067,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.menu_outlined,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ),
                ]);
              }));
        },
        child: const Text("Show case notes"));
  }
}
