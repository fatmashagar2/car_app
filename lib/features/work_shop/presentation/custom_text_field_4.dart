import 'package:flutter/material.dart';

class CustomTextFormField4 extends StatefulWidget {
  final String hintText;

  final TextEditingController controller;
  final bool showSuffixIcon;

  const CustomTextFormField4({
    required this.hintText,

    required this.controller,
    this.showSuffixIcon = false,
  });

  @override
  _CustomTextFormField4State createState() => _CustomTextFormField4State();
}

class _CustomTextFormField4State extends State<CustomTextFormField4> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,

      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: 'Almarai',
          fontSize: 11,
        ),



        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
