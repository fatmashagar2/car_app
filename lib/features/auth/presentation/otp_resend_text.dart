import 'package:flutter/material.dart';

class OTPResendText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " OTP لم تستلم رمز  ",
          style: TextStyle(fontSize: 16, fontFamily: 'Almarai', color: Color(0xff202C79)),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "نرسله لك مره اخري؟",
            style: TextStyle(
                fontSize: 16, fontFamily: 'Almarai', color: Color(0xff202C79), decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
