import 'package:flutter/material.dart';

class SocialIconsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/img10.png"),
        SizedBox(width: 10),
        Image.asset("assets/images/img11.png"),
        SizedBox(width: 10),
        Image.asset("assets/images/img12.png"),
      ],
    );
  }
}
