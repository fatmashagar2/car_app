import 'package:flutter/material.dart';

class CustomTextFormField3 extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool showSuffixIcon;

  const CustomTextFormField3({
    required this.hintText,
    required this.icon,
    required this.controller,
    this.showSuffixIcon = false,
  });

  @override
  _CustomTextFormField3State createState() => _CustomTextFormField3State();
}
class _CustomTextFormField3State extends State<CustomTextFormField3> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.showSuffixIcon ? _isObscured : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: 'Almarai',
          fontSize: 11,
        ),
        prefixIcon: Icon(widget.icon, color: Colors.grey),
        suffixIcon: widget.showSuffixIcon
            ? IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        )
            : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
