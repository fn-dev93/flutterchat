import 'package:flutter/material.dart';
import 'package:flutterchat/src/pages/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      home: Scaffold(
        body: HomePage()
        ),
      );
  }
}
