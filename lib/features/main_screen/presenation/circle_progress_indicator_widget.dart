import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  final double screenWidth;
  CircularProgressIndicatorWidget({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: screenWidth * 0.18,
          height: screenWidth * 0.18,
          child: CircularProgressIndicator(
            value: 0.9,
            strokeWidth: 6,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Color(0xff202C79)),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "90",
              style: TextStyle(
                fontFamily: 'El_Messiri',
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " نقطة",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontFamily: 'El_Messiri',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
