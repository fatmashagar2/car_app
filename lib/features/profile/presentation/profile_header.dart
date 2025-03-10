import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Icon(Icons.arrow_back_ios ,size:15,color: Color(0xff0F0F0F)), onPressed: () {}),
        Text('ملفي الشخصي', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        IconButton(icon: Icon(Icons.close,size:15, color: Color(0xff666666)), onPressed: () {}),
      ],
    );
  }
}
