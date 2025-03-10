import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const ImageItem({
    required this.imagePath,
    required this.width,
    required this.height,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
