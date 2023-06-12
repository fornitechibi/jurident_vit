// import 'package:flutter/material.dart';

// class ThemeProvider with ChangeNotifier {
//   late ThemeData _lightThemeData;
//   late ThemeData _darkThemeData;
//   late  bool _isDarkModeEnabled;

//   ThemeProvider() {
//     _lightThemeData = ThemeData(
//       // Define your custom light theme properties here
//       brightness: Brightness.light,
//       //...
//     );

//     _darkThemeData = ThemeData(
//       // Define your custom dark theme properties here
//       brightness: Brightness.dark,
//       //...
//     );

//     _isDarkModeEnabled = false; // Set initial theme mode
//   }

//   bool get isDarkModeEnabled => _isDarkModeEnabled;

//   void toggleTheme() {
//     _isDarkModeEnabled = !_isDarkModeEnabled;
//     notifyListeners();
//   }

//   ThemeData get themeData {
//     return _isDarkModeEnabled ? _darkThemeData : _lightThemeData;
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider with ChangeNotifier {
  late bool _isDarkModeEnabled;

  final String _lightBackgroundImage = 'assets/background.png';
  final String _darkBackgroundImage = 'assets/background_dark.png';
  Color get nextButtonColor =>
      _isDarkModeEnabled ? const Color(0xFFC99F4A): const Color(0xFF050125);
      Color get loginButtonColor =>
      _isDarkModeEnabled ? Colors.white:Colors.white;
Color get skipButtonColor =>  _isDarkModeEnabled ? Colors.white : const Color(0xFF050125);
Color get skipButtonTextColor =>
    _isDarkModeEnabled ?   const Color(0xFFC99F4A): Colors.white;
    Color get loginButtonTextColor =>
    _isDarkModeEnabled ?   const Color(0xFFC99F4A): const Color(0xFF050125);
Color get bordercolor =>
   _isDarkModeEnabled ? const Color(0xFFC99F4A): const Color(0xFF050125);
Color get dotbuttonColor => _isDarkModeEnabled ? const Color(0xFFC99F4A): const Color(0xFF050125);
  ThemeProvider() {
    _isDarkModeEnabled =
        SchedulerBinding.instance.window.platformBrightness == Brightness.dark;
  }

  bool get isDarkModeEnabled => _isDarkModeEnabled;

  String get backgroundImage =>
      _isDarkModeEnabled ? _darkBackgroundImage : _lightBackgroundImage;

  void toggleTheme() {
    _isDarkModeEnabled = !_isDarkModeEnabled;
    notifyListeners();
  }

  ThemeData get themeData {
    return _isDarkModeEnabled ? ThemeData.dark() : ThemeData.light();
  }
}

