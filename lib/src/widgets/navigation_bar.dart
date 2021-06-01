import 'package:flutter/material.dart';
import 'package:flutterchat/src/theme/theme.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _NavigationButton(
          prop: 0.19,
        ),
        _NavigationButton(
          prop: 0.27,
          text: 'CHATS',
        ),
        _NavigationButton(
          prop: 0.27,
          text: 'ESTADOS',
        ),
        _NavigationButton(
          prop: 0.27,
          text: 'LLAMADAS',
        ),
      ],
    );
  }
}

class _NavigationButton extends StatelessWidget {
  late double prop;
  final String text;

  final mytheme = MyTheme().currentTheme.colorScheme;

  _NavigationButton({required this.prop, this.text = ''});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * prop,
      height: 50,
      color: mytheme.background,
      child: Center(
          child: (text == '')
              ? Icon(
                  Icons.camera_alt,
                  color: Colors.white.withOpacity(0.6),
                )
              : Text(
                  text,
                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                )),
    );
  }
}
