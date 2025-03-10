import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class CustomMotionTabBar extends StatelessWidget {
  final MotionTabBarController controller;
  const CustomMotionTabBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      controller: controller,
      initialSelectedTab: "الرئيسية",
      labels: ["الرئيسية", "المفضلة", "المحادثات", "المزيد"],
      icons: [Icons.home, Icons.favorite, Icons.chat, Icons.more_horiz],
      tabSize: 50,
      tabBarHeight: 60,
      textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      tabIconColor: Colors.grey,
      tabIconSelectedColor: Colors.white,
      tabSelectedColor: Color(0xff202C79),
      tabBarColor: Color(0xff130441),
      onTabItemSelected: (int index) {
        controller.index = index;
      },
    );
  }
}
