import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:juridentt/home.dart';
import 'package:juridentt/onboarding/onboarding1.dart';
import 'package:juridentt/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

import 'router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
    ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider<PageIndex>(
      create: (context) => PageIndex(),
    ),
  ],
  child: MyApp(),
));

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jurident',
       theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeProvider>(context).isDarkModeEnabled
          ? ThemeMode.dark
          : ThemeMode.light,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const OnboardingScreen(),
    );
  }
}


class PageIndex extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void incrementIndex() {
    _index++;
    notifyListeners();
  }

  void setPageIndex(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }
}