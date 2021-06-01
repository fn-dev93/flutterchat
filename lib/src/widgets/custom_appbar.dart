import 'package:flutter/material.dart';
import 'package:flutterchat/src/theme/theme.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mytheme = MyTheme().currentTheme.colorScheme.background;
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: 100,
      color: mytheme,
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Flutterchat',
              style: TextStyle(color: Colors.white, fontSize: 27),
            ),
            Row(children: [
            Icon(Icons.search, color: Colors.white, size: 27,),
            SizedBox(width: 10,),
            Icon(Icons.more_vert_rounded, color: Colors.white, size: 27,),
              
            ],)
          ],
        ),
      ),
    );
  }
}
