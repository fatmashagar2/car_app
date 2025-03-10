import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black54,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'المزيد'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'المحادثات'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'المفضلة'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
      ],
    );
  }
}
