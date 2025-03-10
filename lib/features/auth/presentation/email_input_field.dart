import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  final double screenWidth;

  const EmailInputField({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
      child: TextField(
        decoration: InputDecoration(
          hintText: "أدخل بريدك الإلكتروني",
          prefixIcon: const Icon(Icons.email, color: Color(0xff666666E)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
