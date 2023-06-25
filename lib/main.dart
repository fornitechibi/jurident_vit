import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:juridentt/pages/Bookmarks2.dart';
import 'package:juridentt/pages/Bookmarks_page.dart';
import 'package:juridentt/pages/Calender_page.dart';
import 'package:juridentt/pages/Landing_page1.dart';
import 'package:juridentt/pages/Landing_page5.dart';
import 'package:juridentt/pages/Landing_page3.dart';
import 'package:juridentt/pages/Landing_page4.dart';
import 'package:juridentt/pages/Myfile.dart';
import 'package:juridentt/pages/login_page.dart';
import 'package:juridentt/pages/navigator.dart';
import 'package:juridentt/pages/newcase_form.dart';
import 'package:juridentt/pages/otp_login_page.dart';
import 'package:juridentt/pages/schedule_page.dart';
import 'package:juridentt/pages/schedule_page2.dart';
import 'package:juridentt/pages/temp.dart';
import 'package:juridentt/widgets/Case_card2.dart';
import 'package:juridentt/widgets/case_card.dart';
import 'package:juridentt/widgets/schedule_card.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Juridentt',
      home: BookmarksPage2(
          // case_name: "murder",
          // case_num: 1234,
          // party_name: "bjp",
          // name: "John",
          // date: "today",
          // time: "10:00 AM",
          ),
    );
  }
}
