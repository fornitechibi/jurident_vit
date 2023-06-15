import 'constants.dart';
import 'models/user.dart';

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  Info _user = const Info(
    profile: '',
    name: '',
    location: '',
    lawyerId: '',
    mobileNumber: '',
    email: '',
    address: '',
    type: '',
  );
  Info get user => _user;
  void setUser(String user) {
    _user = Info.fromJson(user);
    notifyListeners();
  }
}


class ThemeChanger with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode=>themeMode==ThemeMode.dark;


  void toggleTheme(bool isOn){
    themeMode=isOn?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }

}

class MyThemes{
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: backColor,
    canvasColor: backColor,
    // iconTheme: IconThemeData(color: darkModeButtonColor),
       
    textTheme:const TextTheme(
      bodyLarge:TextStyle(
        color: Colors.white
      )
    )
  );
  static final drawerTheme = ThemeData.dark().copyWith(
  canvasColor: backColor, // Set the background color for the drawer
);
    
    // primaryColor: backColor

  

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    // primaryColor: Colors.white

  );

}
