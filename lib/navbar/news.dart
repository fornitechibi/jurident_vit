import 'package:flutter/material.dart';
import 'hamburger.dart';
import 'navbar.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Hamburger(),
      appBar: AppBar(
        title: const Center(child: Text('News')),
      ),
      body: const Center(
        child: Text(
          'News Screen ',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
