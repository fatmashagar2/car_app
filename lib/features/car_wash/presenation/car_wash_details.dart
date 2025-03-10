import 'package:flutter/material.dart';

import 'package:latlong2/latlong.dart'as latLng;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'car_wash_buttons.dart';
import 'car_wash_info.dart';
import 'car_wash_map.dart';

class CarWashDetails extends StatelessWidget {
  final PageController pageControllerBottom;
  final latLng.LatLng carWashLocation;
  final double screenWidth;
  final double screenHeight;

  CarWashDetails({
    required this.pageControllerBottom,
    required this.carWashLocation,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.2,
            child: PageView(
              controller: pageControllerBottom,
              children: List.generate(3, (index) => _buildRoundedImage('assets/images/img42.png', screenHeight)),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Center(
            child: SmoothPageIndicator(
              controller: pageControllerBottom,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 6,
                dotWidth: 6,
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          CarWashInfo(screenWidth: screenWidth, screenHeight: screenHeight),
          SizedBox(height: screenHeight * 0.02),
          CarWashMap(carWashLocation: carWashLocation, screenHeight: screenHeight),
          SizedBox(height: screenHeight * 0.03),
          CarWashButtons(screenWidth: screenWidth, screenHeight: screenHeight),
          SizedBox(height: screenHeight * 0.05),
        ],
      ),
    );
  }
  Widget _buildRoundedImage(String imagePath, double screenHeight) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: double.infinity,
        height: screenHeight * 0.2, // تعديل الحجم ليتناسب مع الشاشة
      ),
    );
  }

}
