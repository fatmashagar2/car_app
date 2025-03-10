import 'package:flutter/material.dart';

class LoginLink2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("هل لديك حساب بالفعل؟",style: TextStyle(fontFamily: 'Almarai'),),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("التالي", style: TextStyle(color: Color(0xFF202C79),fontFamily: 'Almarai', decoration: TextDecoration.underline)),
          ),
        ],
      ),
    );
  }
}
