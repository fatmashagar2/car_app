import 'package:flutter/material.dart';

class ViewCount extends StatelessWidget {
  final double screenWidth;
  ViewCount({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Text(
      "عدد المشاهدات : 40011",
      style: TextStyle(fontFamily: 'El_Messiri', fontSize: screenWidth * 0.045),
    );
  }
}

