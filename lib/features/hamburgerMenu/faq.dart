import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../provider.dart';

class FAQ extends StatefulWidget {
  static const String routename = '/faq';
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);
    // _collectionReference.get();
    // _collectionReference.snapshots();
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
          // drawer: HamburgerIcon(),
          appBar: AppBar(
            iconTheme: IconThemeData(color: darkModeButtonColor),
            centerTitle: true,
            backgroundColor:
                themeProvider.isDarkMode ? backColor : Colors.white,
            // leading: InkWell(
            //   onTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder: ((context) => HamburgerIcon())));
            //   },
            //   child: Icon(
            //     Icons.menu,
            //     color: primaryColor,

            //   ),
            // ),
            title: Text(
              "FAQ's",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: darkModeButtonColor,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Container(
                      width: 35,
                      decoration: BoxDecoration(
                        // color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: darkModeButtonColor,
                      )),
                ),
              ),
            ],
          ),
          body: Column(children: [
            Padding(
           padding: const EdgeInsets.only(top:8.0),
           child: Image.asset("/home/sinjin/jurident_vit/lib/assets/Group 33622.png"),
           ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: Container(
                    height: height * 0.81,
                    width: width,
                    decoration: BoxDecoration(
                        color: themeProvider.isDarkMode
                            ? Colors.white
                            : backColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: FocusScope(
                        child: ListView(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.08,
                              top: height * 0.03,
                              right: width * 0.3),
                          child: Text(
                            "FAQ",
                            style: TextStyle(
                                fontSize: 30,
                                color: darkModeButtonColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.08,
                              top: height * 0.01,
                              right: width * 0.1),
                          child: const Text(
                            "Find important information and update about any recent changes and fees here.",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.08,
                              top: height * 0.05,
                              right: width * 0.1),
                          child: Text(
                            "General",
                            style: TextStyle(
                                fontSize: 20, color: darkModeButtonColor),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        GFAccordion(
                          textStyle: TextStyle(
                            color: themeProvider.isDarkMode
                                ? backColor
                                : darkModeButtonColor,
                          ),
                          contentPadding: const EdgeInsets.only(top: 30),
                          expandedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // contentBorder:
                          //     Border.all(color: darkModeButtonColor),
                          titleBorder: Border.all(
                              color: themeProvider.isDarkMode
                                  ? backColor
                                  : darkModeButtonColor),
            
                          contentBackgroundColor: themeProvider.isDarkMode
                              ? Colors.white
                              : backColor,
                          collapsedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // showAccordion: true,
            
                          title:
                              'What legal services are offered on this app?',
                          contentChild: const Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                color: Colors
                                    .grey), // Change the text color here
                          ),
                          collapsedIcon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                          expandedIcon: Icon(
                            Icons.arrow_drop_up_outlined,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                            
                          ),
                        ),
                        GFAccordion(
                          textStyle: TextStyle(
                            color: themeProvider.isDarkMode
                                ? backColor
                                : darkModeButtonColor,
                          ),
                          expandedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          contentPadding: const EdgeInsets.only(top: 30),
                          // contentBorder:
                          //     Border.all(color: darkModeButtonColor),
                          titleBorder: Border.all(
                              color: themeProvider.isDarkMode
                                  ? backColor
                                  : darkModeButtonColor),
            
                          contentBackgroundColor: themeProvider.isDarkMode
                              ? Colors.white
                              : backColor,
                          collapsedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // showAccordion: true,
            
                          title:
                              'How do I communicate with a lawyer on this app?',
                          contentChild: const Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                color: Colors
                                    .grey), // Change the text color here
                          ),
            
                          collapsedIcon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                          expandedIcon: Icon(
                            Icons.arrow_drop_up_outlined,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                        ),
                        GFAccordion(
                          contentPadding: const EdgeInsets.only(top: 30),
                          textStyle: TextStyle(
                            color: themeProvider.isDarkMode
                                ? backColor
                                : darkModeButtonColor,
                          ),
                          expandedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // contentBorder:
                          //     Border.all(color: darkModeButtonColor),
                          titleBorder: Border.all(
                              color: themeProvider.isDarkMode
                                  ? backColor
                                  : darkModeButtonColor),
            
                          contentBackgroundColor: themeProvider.isDarkMode
                              ? Colors.white
                              : backColor,
                          collapsedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // showAccordion: true,
            
                          title: 'How much does this app cost?',
                          contentChild: const Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                color: Colors
                                    .grey), // Change the text color here
                          ),
                          collapsedIcon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                          expandedIcon: Icon(
                            Icons.arrow_drop_up_outlined,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                        ),
                        GFAccordion(
                          contentPadding: const EdgeInsets.only(top: 30),
                          textStyle: TextStyle(
                            color: themeProvider.isDarkMode
                                ? backColor
                                : darkModeButtonColor,
                          ),
                          expandedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
            
                          titleBorder: Border.all(
                              color: themeProvider.isDarkMode
                                  ? backColor
                                  : darkModeButtonColor),
            
                          contentBackgroundColor: themeProvider.isDarkMode
                              ? Colors.white
                              : backColor,
                          collapsedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // showAccordion: true,
            
                          title: 'Is my information secure on this app?',
                          contentChild: const Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                color: Colors
                                    .grey), // Change the text color here
                          ),
                          // content: 'lorem ipsum bla bla bla',
            
                          collapsedIcon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                          expandedIcon: Icon(
                            Icons.arrow_drop_up_outlined,
                            color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                        ),
                        GFAccordion(
                          contentPadding: const EdgeInsets.only(top: 30),
                          textStyle: TextStyle(
                            color: themeProvider.isDarkMode
                                ? backColor
                                : darkModeButtonColor,
                          ),
                          expandedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // contentBorder:
                          //     Border.all(color: darkModeButtonColor),
                          titleBorder: Border.all(
                              color: themeProvider.isDarkMode
                                  ? backColor
                                  : darkModeButtonColor),
            
                          contentBackgroundColor: themeProvider.isDarkMode
                              ? Colors.white
                              : backColor,
                          collapsedTitleBackgroundColor:
                              themeProvider.isDarkMode
                                  ? Colors.white
                                  : backColor,
                          // showAccordion: true,
            
                          title:
                              'Can I use this app if i am outside the US?',
                          contentChild: const Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                color: Colors
                                    .grey), // Change the text color here
                          ),
                          collapsedIcon: Icon(
                            Icons.arrow_drop_down_sharp,
                           color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                          expandedIcon: Icon(
                            Icons.arrow_drop_up_outlined,
                           color: themeProvider.isDarkMode?backColor:darkModeButtonColor,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                        ),
                      ),
                    )),
              ),
            ),

            // SizedBox(height: height*0.5,),
            // Container(
            //   height: height*0.81,
            //   width: width,
            //   decoration: BoxDecoration(
            //       color: backColor,
            //       borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(10),
            //           topRight: Radius.circular(10))),
            //   child: Column(
            //     children: [
            //       TextButton(onPressed: (){}, child: Text("Edit Profile")),

            //     ],
            //   ),
            // ),
          ])),
    );
  }
}
