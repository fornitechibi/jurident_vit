import 'package:flutter/material.dart';
import 'changetheme.dart';
import 'hamburger.dart';
import 'navbar.dart';
import 'package:juridentt/models/theme_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.light
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      drawer: const Hamburger(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Home')),
        // actions: [
        //   ChangeThemeButtonWidget(),
        // ],
      ),
      body: Center(
        child: Text(
          'hello $text',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//   @override
//   Widget build(BuildContext context) {
//     final text = MediaQuery.of(context).platformBrightness== Brightness.light
//         ? 'DarkTheme'
//         : 'LightTheme';
//     return Scaffold(
//       drawer: const Hamburger(),
//       appBar: AppBar(
//         title: const Center(child: Text('Home')),
//         actions: [
//           // ChangeThemeButtonWidget();
//         ],
//       ),
//       body:  Center(
//           child: Text('hello $text',
//             style: TextStyle(
//                 fontSize: 40,
//             ),
//           ),
//       ),
//
//     );
//   }
// }