import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const BackgroundImage({required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        "assets/images/img4.png",
        width: screenWidth,
        height: screenHeight * 0.5,
        fit: BoxFit.cover,
      ),
    );
  }
}
