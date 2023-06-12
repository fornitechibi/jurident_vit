import 'package:flutter/material.dart';
import 'package:juridentt/authentication/login/login.dart';
import 'package:juridentt/resources/auth.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Auth().signOut();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text('Logout'),
          ),
        ),
      ),
    );
  }
}
