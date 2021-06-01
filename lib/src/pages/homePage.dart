import 'package:flutter/material.dart';
import 'package:flutterchat/src/widgets/custom_appbar.dart';
import 'package:flutterchat/src/widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          NavigationBar(),
        ],
      ));
  }
}