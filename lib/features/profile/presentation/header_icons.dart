import 'package:flutter/material.dart';

class HeaderIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.account_circle_outlined, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu, color: Colors.white), onPressed: () {}),
        ],
      ),
    );
  }
}
