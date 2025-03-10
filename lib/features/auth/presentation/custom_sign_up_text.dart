import 'package:flutter/material.dart';

import '../../../main.dart';
import 'sign_up_screen.dart';

class CustomSignUpText extends StatelessWidget {
  const CustomSignUpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("ليس لديك حساب؟",style: TextStyle(
            fontFamily: 'Almarai',


          ),),
          TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
            },
            child: const Text("إنشاء حساب", style: TextStyle(color: Color(0xFF202C79),fontWeight: FontWeight.bold, fontFamily: 'Almarai', decoration: TextDecoration.underline)),
          ),
        ],
      ),
    );
  }
}
