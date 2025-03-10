import 'package:flutter/material.dart';

import '../../../main.dart';

import 'forget_password_view.dart';

class CustomForgotPassword extends StatelessWidget {
  const CustomForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgetPasswordView()));
        },
        child: const Text("هل نسيت كلمة السر؟", style: TextStyle(color: Color(0xff202C79),
        fontWeight: FontWeight.bold)),
      ),
    );
  }
}
