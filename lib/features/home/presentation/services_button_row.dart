import 'package:flutter/material.dart';

import 'services_button.dart';

class ServiceButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ServiceButton(
          imagePath: 'assets/images/img15.jpeg',
          buttonText: 'مركز خدمة',
          width: size.width * 0.4,
          height: size.height * 0.25,
        ),
        SizedBox(width: size.width * 0.04),
        ServiceButton(
          imagePath: 'assets/images/img14.jpeg',
          buttonText: 'غسيل السيارات',
          width: size.width * 0.4,
          height: size.height * 0.25,
        ),
      ],
    );
  }
}
