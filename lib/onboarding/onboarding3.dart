import 'package:flutter/material.dart';
import 'package:juridentt/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import '../main.dart';
class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    final pageIndex = Provider.of<PageIndex>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final backgroundImage = themeProvider.backgroundImage;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            backgroundImage,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top:60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    IconButton(
                      icon: Icon(
                        themeProvider.isDarkModeEnabled
                            ? Icons.light_mode
                            : Icons.dark_mode,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        themeProvider.toggleTheme();
                      },
                    ),
              Container(
                padding: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeProvider.skipButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                onPressed: () {
                  pageIndex.setPageIndex(2);
                  Navigator.pushNamed(context, '/third');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'skip',
                    style: TextStyle(
                      color: themeProvider.skipButtonTextColor,
                    ),
                  ),
                ),
              ),
              ),

                  ],
                ),
          const SizedBox(height:40),
                 Image.asset('assets/onboarding3.png'),
                 const SizedBox(height: 40,),
                const Text('Everything in one place',
                style: TextStyle(fontSize: 36),),
                const SizedBox(height: 18,),
                const Text("Add your personal notes to\n        any case you'd prefer.",
                style: TextStyle(fontSize: 16,height: 1.5),
                ),
                const SizedBox(height: 42,),
  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    buildDot(
      context,
      pageIndex.index == 0,
      themeProvider.dotbuttonColor,
      Colors.white,
      () {
        pageIndex.setPageIndex(0); // Update with the correct page index
        Navigator.pushNamed(context, '/'); // Update with the correct route for the first page
      },
    ),
    buildDot(
      context,
      pageIndex.index == 1,
      themeProvider.dotbuttonColor,
      Colors.white,
      () {
        pageIndex.setPageIndex(1); // Update with the correct page index
        Navigator.pushNamed(context, '/second'); // Update with the correct route for the second page
      },
    ),
    buildDot(
      context,
      pageIndex.index == 2,
      themeProvider.dotbuttonColor,
      Colors.white,
      () {
        pageIndex.setPageIndex(2); // Update with the correct page index
        Navigator.pushNamed(context, '/third'); // Update with the correct route for the third page
      },
    ),
  ],
),



                const SizedBox(
                  height: 56,
                ),
                Container(
                  padding: EdgeInsets.only(left: 45,right: 41),
         
   
                  child: Row(
                    children: [
                  ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(19),
    topRight: Radius.zero,
    bottomRight: Radius.zero,
  
    bottomLeft: Radius.circular(19),

  ),
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: themeProvider.nextButtonColor,
      side: BorderSide(
              color: themeProvider.bordercolor,
              width: 1.0,
            ),
    ),
    onPressed: () {
      // pageIndex.incrementIndex();
      // Navigator.pushNamed(context, '/second');
    },
    child: Padding(
   padding: EdgeInsets.fromLTRB(50, 26, 30, 23),
      child: Text('Register'),
    ),
  ),
),

                                   ClipRRect(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(19),
    topLeft: Radius.zero,
    bottomLeft: Radius.zero,
    bottomRight: Radius.circular(19),
  ),
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: themeProvider.loginButtonColor,
    ),
    onPressed: () {
      // pageIndex.incrementIndex();
      // Navigator.pushNamed(context, '/second');
    },
    child: Padding(
   padding: EdgeInsets.fromLTRB(50, 26, 37, 23),
      child: Text('Login',
      style: TextStyle(
        color: themeProvider.loginButtonTextColor,
      ),),
    ),
  ),
),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

Widget buildDot(BuildContext context, bool isActive, Color activeColor, Color inactiveColor, Function() onDotPressed) {
  return GestureDetector(
    onTap: onDotPressed,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: isActive ? 24 : 10,
      height: 7,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inactiveColor,
        shape: isActive ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: isActive ? BorderRadius.circular(20) : null,
      ),
    ),
  );
}



}
