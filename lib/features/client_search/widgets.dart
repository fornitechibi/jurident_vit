import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  const CustomListTile({super.key, required this.title});
  

  @override
  Widget build(BuildContext context) {
    return  ListTile(
                title: Text(title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)));
  }
}