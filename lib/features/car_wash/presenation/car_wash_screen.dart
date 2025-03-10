import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart'as latLng;

import '../../home2/presentation/custom_bottom_navigation_bar.dart';
import 'car_wash_details.dart';
import 'custom_silver_app_bar.dart';

class CarWashScreen extends StatefulWidget {
  @override
  _CarWashScreenState createState() => _CarWashScreenState();
}

class _CarWashScreenState extends State<CarWashScreen> {
  final PageController _pageControllerTop = PageController();
  final PageController _pageControllerBottom = PageController();
  final latLng.LatLng carWashLocation = latLng.LatLng(30.0444, 31.2357);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(),
          body: CustomScrollView(
            slivers: [
              CustomSliverAppBar(pageController: _pageControllerTop, screenHeight: screenHeight),
              SliverList(
                delegate: SliverChildListDelegate([
                  CarWashDetails(
                    pageControllerBottom: _pageControllerBottom,
                    carWashLocation: carWashLocation,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }

}
