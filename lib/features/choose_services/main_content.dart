import 'package:flutter/material.dart';

import '../../main.dart';
import '../auth/presentation/sign_up_header.dart';
import 'image_with_button.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [ SignUpHeader(screenWidth: screenWidth, screenHeight: screenHeight),

        SizedBox(height: screenHeight * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageWithButton(imagePath: 'assets/images/img15.jpeg', buttonText: 'مركز خدمة'),
            SizedBox(width: screenWidth * 0.05),
            ImageWithButton(imagePath: 'assets/images/img14.jpeg', buttonText: 'غسيل السيارات'),
          ],
        ),
      ],
    );
  }
}
