import 'package:car_app/features/auth/presentation/send_button.dart';
import 'package:flutter/material.dart';

import 'app_logo.dart';
import 'background_image.dart';
import 'email_input_field.dart';
import 'forget_password_header.dart';


class ForgetPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenHeight = constraints.maxHeight;
            double screenWidth = constraints.maxWidth;

            return Column(
              children: [
                SizedBox(height: screenHeight * 0.03,),
                AppLogo(),
                ForgetPasswordHeader(screenHeight: screenHeight, screenWidth: screenWidth),
                EmailInputField(screenWidth: screenWidth),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      BackgroundImage(screenHeight: screenHeight, screenWidth: screenWidth),
                      SendButton(screenHeight: screenHeight, screenWidth: screenWidth),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
