import 'package:flutter/material.dart';

import '../../../main.dart';
import 'otp_screen.dart';

class SendButton extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const SendButton({required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.05,
      child: SizedBox(
        width: screenWidth * 0.9,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(screenWidth * 0.6, screenHeight * 0.06),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
          ),
          child: const FittedBox(
            child: Text(
              "أرسل",
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Almarai',
                color: Color(0xFF202C79),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
