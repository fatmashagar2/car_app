import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../auth/presentation/sign_up_header.dart';
import 'action_row.dart';
import 'header_text.dart';
import 'points_card.dart';
import 'view_content.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                SignUpHeader(screenWidth: screenWidth, screenHeight: screenHeight),
                Positioned(
                  top: screenHeight * 0.1,
                  left: screenWidth * 0.25,
                  child: Text(
                    "الصفحة الرئيسية",
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontFamily: 'El Messiri',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  children: [
                    HeaderText(screenWidth: screenWidth),
                    SizedBox(height: screenHeight * 0.02),
                    PointsCard(screenWidth: screenWidth, screenHeight: screenHeight),
                    SizedBox(height: screenHeight * 0.03),
                    ActionsRow(),
                    SizedBox(height: screenHeight * 0.03),
                    ViewCount(screenWidth: screenWidth),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
