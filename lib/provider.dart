import 'models/user.dart';

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  Info _user = Info(
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
