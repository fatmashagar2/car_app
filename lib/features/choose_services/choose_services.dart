import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

import 'custom_motion_tab_bar.dart';
import 'main_content.dart';

class ChooseServices extends StatefulWidget {
  @override
  _ChooseServicesState createState() => _ChooseServicesState();
}

class _ChooseServicesState extends State<ChooseServices> with SingleTickerProviderStateMixin {
  late MotionTabBarController _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _motionTabBarController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          MainContent(),
          Center(child: Text("المفضلة", style: TextStyle(fontSize: 20))),
          Center(child: Text("المحادثات", style: TextStyle(fontSize: 20))),
          Center(child: Text("المزيد", style: TextStyle(fontSize: 20))),
        ],
      ),
      bottomNavigationBar: CustomMotionTabBar(controller: _motionTabBarController),
    );
  }

  @override
  void dispose() {
    _motionTabBarController.dispose();
    super.dispose();
  }
}
