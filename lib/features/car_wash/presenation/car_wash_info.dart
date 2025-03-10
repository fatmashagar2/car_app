import 'package:flutter/material.dart';

class CarWashInfo extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  CarWashInfo({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('مغسلة الهادي', style: TextStyle(fontSize: screenWidth * 0.05, fontFamily: 'Almarai', color: Color(0xff231F20))),
          SizedBox(height: screenHeight * 0.01),
          Text('الجيزة', style: TextStyle(fontFamily: 'Almarai', color: Color(0xff231F20))),
          Text('شارع محمد الزايد', style: TextStyle(fontFamily: 'Almarai', color: Color(0xff231F20))),
          SizedBox(height: screenHeight * 0.01),
          Text('غسيل عادي وغسيل ناشف', style: TextStyle(color: Color(0xff231F20), fontFamily: 'Almarai')),
        ],
      ),
    );
  }
}
