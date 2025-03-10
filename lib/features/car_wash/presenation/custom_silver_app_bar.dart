import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSliverAppBar extends StatelessWidget {
  final PageController pageController;
  final double screenHeight;

  CustomSliverAppBar({required this.pageController, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: screenHeight * 0.2,
      flexibleSpace: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: List.generate(3, (index) => _buildRoundedImage('assets/images/img41.png', screenHeight)),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 6,
                dotWidth: 6,
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.grey,
              ),
            ),
          ),
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
        height: screenHeight * 0.2,
      ),
    );
  }
}
