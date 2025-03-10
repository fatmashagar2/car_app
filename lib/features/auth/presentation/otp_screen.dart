import 'package:flutter/material.dart';

import 'otp_image_header.dart';
import 'otp_input_field.dart';
import 'otp_resend_text.dart';
import 'otp_submit_button.dart';
import 'otp_subtitle.dart';
import 'otp_title.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OTPImageHeader(screenWidth: screenWidth),
                SizedBox(height: screenHeight * 0.05),
                OTPTitle(),
                SizedBox(height: screenHeight * 0.01),
                OTPSubtitle(),
                SizedBox(height: screenHeight * 0.03),
                OTPInputFields(screenWidth: screenWidth, screenHeight: screenHeight),
                SizedBox(height: screenHeight * 0.03),
                OTPResendText(),
                SizedBox(height: screenHeight * 0.15),
                OTPSubmitButton(screenWidth: screenWidth, screenHeight: screenHeight),
              ],
            ),
          );
        },
      ),
    );
  }
}
