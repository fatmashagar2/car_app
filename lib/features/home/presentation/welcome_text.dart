import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
        "فين ماتروح هتلاقينا معاك",
        style: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xff0D0D0D),
        ));
  }
}
