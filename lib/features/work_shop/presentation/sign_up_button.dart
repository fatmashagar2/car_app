import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../choose_services/choose_services.dart';

class SignUpButton extends StatelessWidget {
  final double screenHeight;
  const SignUpButton({required this.screenHeight});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: screenHeight * 0.06,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseServices()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff202C79),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text("تسجيل الإشتراك", style: TextStyle(color: Colors.white, fontFamily: 'Almarai')),
      ),
    );
  }
}
