import 'package:flutter/material.dart';

class ForgetPasswordHeader extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const ForgetPasswordHeader({required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.08),
          const FittedBox(
            child: Text(
              "نسيت كلمة السر",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
                color: Color(0xFF202C79),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          const FittedBox(
            child: Text(
              "سنرسل لك الكود عبر البريد الإلكتروني لإعادة تعيين\n كلمة المرور الخاصة بك.",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Almarai', fontSize: 14, color: Color(0xff5D5D5D)),
            ),
          ),
          SizedBox(height: screenHeight * 0.06),
        ],
      ),
    );
  }
}
