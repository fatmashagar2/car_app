import 'package:flutter/material.dart';

class SectionSubtitle extends StatelessWidget {
  final String title;
  final Color color;
  const SectionSubtitle({required this.title, required this.color});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, color: color, fontFamily: 'Almarai'),
    );
  }
}
