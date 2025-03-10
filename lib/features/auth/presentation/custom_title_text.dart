import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "اهلا بيك",
          style: TextStyle(
            fontFamily: 'Almarai',
            fontSize: MediaQuery.of(context).size.width * 0.06,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2A3AA2),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "تسجيل الدخول الى حسابك",
          style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: MediaQuery.of(context).size.width * 0.03,
              color: Color(0xff666666)
          ),
        ),
      ],
    );
  }
}
