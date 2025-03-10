import 'package:flutter/material.dart';

class ImageWithButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  const ImageWithButton({required this.imagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: Image.asset(
            imagePath,
            width: screenWidth * 0.4,
            height: screenHeight * 0.23,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: screenHeight * 0.015),
        SizedBox(
          width: screenWidth * 0.4,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff130441),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(buttonText),
          ),
        ),
      ],
    );
  }
}
