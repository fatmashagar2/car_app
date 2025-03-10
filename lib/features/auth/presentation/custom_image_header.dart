import 'package:flutter/material.dart';

class CustomImageHeader extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const CustomImageHeader({required this.screenWidth, required this.screenHeight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Image.asset(
        "assets/images/img3.png",
        width: screenWidth,
        height: screenHeight * 0.35,
        fit: BoxFit.cover,
      ),
    );
  }
}