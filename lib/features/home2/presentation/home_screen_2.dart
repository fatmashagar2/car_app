import 'package:flutter/material.dart';

import 'custom_bottom_navigation_bar.dart';
import 'filter_section.dart';
import 'grid_section.dart';
import 'image_section.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool isChecked = false;
  String selectedFuel = 'بنزين';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSection(screenWidth: screenWidth, screenHeight: screenHeight),
            FilterSection(
              isChecked: isChecked,
              selectedFuel: selectedFuel,
              onCheckboxChanged: (value) => setState(() => isChecked = value!),
              onFuelChanged: (value) => setState(() => selectedFuel = value!),
            ),
            GridSection(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}
