
import 'package:flutter/material.dart';

class CarWashButtons extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  CarWashButtons({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = screenWidth * 0.4; // نسبة 40% من عرض الشاشة
    double buttonHeight = screenHeight * 0.06; // نسبة 6% من ارتفاع الشاشة
    double fontSize = screenWidth * 0.045; // تكبير الخط بما يتناسب مع الشاشة
    double iconSize = screenWidth * 0.06; // حجم الأيقونة النسبي

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton(
          text: 'واتساب',
          onPressed: () {
            // أضف وظيفة فتح الواتساب هنا
          },
          width: buttonWidth,
          height: buttonHeight,
          fontSize: fontSize,

        ),
        _buildButton(
          text: 'اتصال',
          onPressed: () {
            // أضف وظيفة الاتصال هنا
          },
          width: buttonWidth,
          height: buttonHeight,
          fontSize: fontSize,

        ),

      ],
    );
  }

  Widget _buildButton({
    required String text,
    required VoidCallback onPressed,
    required double width,
    required double height,
    required double fontSize,

  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFF210A64), // لون الخلفية
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: fontSize,fontFamily: 'Almarai'),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
