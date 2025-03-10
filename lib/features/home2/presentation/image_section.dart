import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  ImageSection({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/img33.png',
          width: double.infinity,
          height: screenHeight * 0.25,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: screenHeight * 0.125,
          left: screenWidth * 0.15,
          right: screenWidth * 0.15,
          child: Image.asset(
            "assets/images/img38.png",
            width: double.infinity,
            height: screenHeight * 0.15,
          ),
        ),
      ],
    );
  }
}
