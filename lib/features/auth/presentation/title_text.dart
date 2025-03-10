import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "كلمة المرور الجديدة",
          style: TextStyle(
            fontFamily: 'Almarai',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2A3AA2),
          ),
        ),
        SizedBox(height: 12),
        Text("إنشاء كلمة مرورك الجديدة",
            style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}
