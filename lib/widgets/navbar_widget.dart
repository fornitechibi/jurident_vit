import 'package:flutter/material.dart';

import '../navbar/account.dart';
import '../navbar/calender.dart';
import '../navbar/home.dart';
import '../navbar/news.dart';
import '../pages/Bookmarks_page.dart';
import '../pages/newcase_form.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int currentTab = 0;

  //the below code declares a constant (final) variable named screen that holds a
  // list (List) of objects of type Widget.
  final List<Widget> screens = [
    const Home(),
    const News(),
    const Calendar(),
    const Account(),
    const BookmarksPage(),
    const Newcase_form(),
  ];

  // PageStorageBucket
  // It represents a storage bucket used to store and restore the state of widgets.
  //below lines of code is often used when you need to store and restore the state
  // of widgets in Flutter applications, typically in scenarios where you have multiple
  // screens or pages and want to persist their state when navigating between them.
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Home();
  @override
  Widget build(BuildContext context) {
    final yellow = Color(0xFFC99F4A);
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 200),
          child: Stack(
            children: [
              Container(
                height: 65,
                width: 428,
                decoration: BoxDecoration(
                    color: Color(0xff333333),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
              Column(
                children: [
                  Transform(
                    transform: Matrix4.translationValues(0, -25, 0),
                    child: FloatingActionButton(
                      backgroundColor: yellow,
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(0, -45, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  currentScreen = BookmarksPage();
                                  currentTab = 4;
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: currentTab == 0
                                        ? Color(0xFFC99F4A)
                                        : Colors.white,
                                  ),
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                      color: currentTab == 0
                                          ? Color(0xFFC99F4A)
                                          : Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  currentScreen = const News();
                                  currentTab = 1;
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.newspaper,
                                    color: currentTab == 1
                                        ? const Color(0xFFC99F4A)
                                        : Colors.white,
                                  ),
                                  Text(
                                    'News',
                                    style: TextStyle(
                                      color: currentTab == 1
                                          ? const Color(0xFFC99F4A)
                                          : Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Right Tab Bar Icons
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  currentScreen = const Calendar();
                                  currentTab = 2;
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: currentTab == 2
                                        ? Color(0xFFC99F4A)
                                        : Colors.white,
                                  ),
                                  Text(
                                    'Calendar',
                                    style: TextStyle(
                                      color: currentTab == 2
                                          ? Color(0xFFC99F4A)
                                          : Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  currentScreen = const Account();
                                  currentTab = 3;
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: currentTab == 3
                                        ? Color(0xFFC99F4A)
                                        : Colors.white,
                                  ),
                                  Text(
                                    'Account',
                                    style: TextStyle(
                                      color: currentTab == 3
                                          ? Color(0xFFC99F4A)
                                          : Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
