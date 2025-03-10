import 'package:flutter/material.dart';

class OTPImageHeader extends StatelessWidget {
  final double screenWidth;
  const OTPImageHeader({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/img6.png",
      width: screenWidth,
      fit: BoxFit.fill,
    );
  }
}
