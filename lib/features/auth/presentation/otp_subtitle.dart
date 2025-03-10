import 'package:flutter/material.dart';

class OTPSubtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "لقد قمنا بإرسال رمز إلى بريدك\n الإلكتروني",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.grey[700], fontFamily: 'Almarai'),
    );
  }
}
