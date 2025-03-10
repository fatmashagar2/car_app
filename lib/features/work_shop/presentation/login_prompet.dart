import 'package:flutter/material.dart';

class LoginPrompt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("هل لديك حساب بالفعل؟", style: TextStyle(fontFamily: 'Almarai')),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "سجل دخول",
            style: TextStyle(
              color: Color(0xFF202C79),
              fontFamily: 'Almarai',
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
