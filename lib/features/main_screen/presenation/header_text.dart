import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final double screenWidth;
  HeaderText({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Row(
        children: [
          Text(
            "نقاط",
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              fontFamily: 'El_Messiri',
              fontWeight: FontWeight.bold,
              color: Color(0xff202C79),
            ),
          ),
          SizedBox(width: screenWidth * 0.02),
          Text(
            "تتحدث اليوم",
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              fontFamily: 'El_Messiri',
              color: Color(0xff5D5D5D),
            ),
          ),
        ],
      ),
    );
  }
}
