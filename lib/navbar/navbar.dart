import 'package:flutter/material.dart';
import 'package:juridentt/pages/Bookmarks_page.dart';
import 'package:juridentt/pages/newcase_form.dart';
import 'account.dart';
import 'calender.dart';
import 'home.dart';
import 'news.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
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
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 35,
        ),
        //Try adding the 'const' keyword to the constructor invocation.
        onPressed: () {
          setState(() {
            currentScreen = Newcase_form();
            currentTab = 5;
          });
        },
        backgroundColor: Color(0xFFC99F4A),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape:
            const CircularNotchedRectangle(), //represents a rectangular shape with a circular notch at the bottom
        color: Colors.black,
        notchMargin: 0,
        child: Container(
          height: 60,
          // color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }
}
