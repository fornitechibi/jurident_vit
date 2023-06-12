import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../theme/theme_provider.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(top: 60),
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
                const SizedBox(height: 70),
                Image.asset('assets/onboarding2.png'),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Never  Be  Late',
                  style: TextStyle(fontSize: 36),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Our alarm system integrated within the app\n will notify you of any upcoming events.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                const SizedBox(
                  height: 42,
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final screenWidth = constraints.maxWidth;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDot(
                          context,
                          pageIndex.index == 0,
                          themeProvider.dotbuttonColor,
                          Colors.white,
                          () {
                            pageIndex.setPageIndex(0);
                            Navigator.pushNamed(context, '/');
                          },
                        ),
                        buildDot(
                          context,
                          pageIndex.index == 1,
                          themeProvider.dotbuttonColor,
                          Colors.white,
                          () {
                            pageIndex.setPageIndex(1);
                            Navigator.pushNamed(context, '/second');
                          },
                        ),
                        buildDot(
                          context,
                          pageIndex.index == 2,
                          themeProvider.dotbuttonColor,
                          Colors.white,
                          () {
                            pageIndex.setPageIndex(2);
                            Navigator.pushNamed(context, '/third');
                          },
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 56,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07, 
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                   
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: themeProvider.nextButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                      onPressed: () {
                        pageIndex.incrementIndex();
                        Navigator.pushNamed(context, '/third');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('next'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildDot(
  BuildContext context,
  bool isActive,
  Color activeColor,
  Color inactiveColor,
  Function() onDotPressed,
) {
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
