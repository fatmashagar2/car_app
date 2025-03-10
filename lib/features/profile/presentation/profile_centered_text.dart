import 'package:car_app/main.dart';
import 'package:flutter/material.dart';

import 'sign_up_screen_2.dart';

class ProfileCenteredText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: Center(child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen2()));
          },child: Text("التسجيل كمزود خدمه", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))))),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
        ],
      ),
    );
  }
}
