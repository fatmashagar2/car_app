import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const SignUpHeader({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.2,
          child: Image.asset(
            'assets/images/img8.png',
            width: screenWidth,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: screenHeight * 0.1,
          right: 10,
          child: Image.asset(
            'assets/images/img13.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
