import 'package:flutter/material.dart';

import 'circle_progress_indicator_widget.dart';

class PointsCard extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  PointsCard({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.02,
          horizontal: screenWidth * 0.05,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicatorWidget(screenWidth: screenWidth),
                      SizedBox(width: screenWidth * 0.04),
                      Flexible(
                        child: Text(
                          "لا يوجد تغيير مقارنة بآخر تحديث",
                          style: TextStyle(fontSize: screenWidth * 0.04, fontFamily: 'El_Messiri'),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Divider(color: Colors.grey[300]),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "عرض التفاصيل",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontFamily: 'El_Messiri',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff202C79),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Color(0xff202C79), size: screenWidth * 0.045),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
