import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:juridentt/features/client_search/widgets.dart';
// import 'package:jurident/colors.dart';
// import 'package:jurident/theme_changer_provider.dart';
// import 'package:jurident/theme_changer_provider.dart';

import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../provider.dart';
// import '../constants.dart';
// import '../provider.dart';
// import 'theme_changer_provider.dart';

class HamburgerIcon extends StatefulWidget {
  static const String routename = '/hamburger';
  const HamburgerIcon({super.key});

  @override
  State<HamburgerIcon> createState() => _HamburgerIconState();
}

class _HamburgerIconState extends State<HamburgerIcon> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  // bool isDarkModeEnabled=false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final themeProvider = Provider.of<ThemeChanger>(context);
    return Drawer(
        backgroundColor: Theme.of(context).canvasColor,
        child: ListView(
          children: [
            
      
            SizedBox(
              height: screenHeight*0.07,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth*0.04),
              child: Row(children: [
                CircleAvatar(
                  radius: screenHeight*0.055,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/id/237/200/300"),
                ),
                SizedBox(
                  width: screenWidth*0.03,
                ),
                const Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Sinjin John",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Lawyer",
                      style: TextStyle(fontSize: 15,),
                    )
                  ],
                )
              ]),
            ),
      
             SizedBox(
              height: screenHeight*0.07,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.03),
              child:const  Row(
                children: [
                   Text("Language",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                   Expanded(
                      
                    child: Text(""),
                  ),
                   Row(
                    children: [Text("En"), Icon(Icons.arrow_drop_up)],
                  )
                ],
              ),
            ),
            const CustomListTile(title: "Terms and Conditions"),
           const CustomListTile(title: "About Us"),
            ListTile(
                title: const Text("Dark Mode",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Switch.adaptive(
                    // thumbIcon: Icons.check,
                    activeColor: Colors.white,
                    activeTrackColor: toggleColor,
                    value: themeProvider.isDarkMode,
                    onChanged: (value) {
                      final provider =
                          Provider.of<ThemeChanger>(context, listen: false);
                      provider.toggleTheme(value);
                    }))
            ,
            ListTile(
                title: const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Switch(
                    // thumbIcon: Icons.check,
                    activeColor: Colors.white,
                    activeTrackColor: toggleColor,
                    value: isSwitched1,
                    onChanged: (value) {
                      setState(() {
                        isSwitched1 = value;
                      });
                    })
                ),
            const CustomListTile(title: "Contact Us"),
            const CustomListTile(title: "Support Chat"),
            const CustomListTile(title: "FAQ"),
            const CustomListTile(title: "Feedback Page"),
            SizedBox(
              height: screenHeight*0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: screenHeight*0.055,
                // width: screenWidth*0.01,
                decoration: BoxDecoration(
                    color: themeProvider.isDarkMode?darkModeButtonColor:backColor, borderRadius: BorderRadius.circular(8)),
                child: const Center(
                    child: Text(
                  "LogOut",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )),
              ),
            )
          ],
        ),
      );
    
  }
}



