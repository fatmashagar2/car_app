import 'package:flutter/material.dart';

import '../../../main.dart';
import 'reset_password_screen.dart';

class OTPSubmitButton extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const OTPSubmitButton({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.9,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff202C79),
          minimumSize: Size(screenWidth * 0.6, screenHeight * 0.06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
        child: FittedBox(
          child: const Text(
            "أرسل",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Almarai',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

