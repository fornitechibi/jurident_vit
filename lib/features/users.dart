import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  static const String routename = '/users';
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  final TextEditingController _fname = TextEditingController();
  final TextEditingController _degree = TextEditingController();


  @override
  void dispose() {
    _fname.dispose();
    _degree.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}