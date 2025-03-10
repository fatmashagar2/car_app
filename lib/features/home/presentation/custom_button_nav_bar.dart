import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BottomNavigationBar(
      selectedFontSize: size.width * 0.04,
      unselectedFontSize: size.width * 0.035,
      iconSize: size.width * 0.07,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "المشتريات"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "الحساب"),
      ],
    );
  }
}
