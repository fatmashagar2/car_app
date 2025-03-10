import 'package:flutter/material.dart';

import '../../auth/presentation/login_view.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final int currentIndex;
  final PageController controller;

  const OnBoardingPage({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.currentIndex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(image, fit: BoxFit.cover),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black.withOpacity(0.7), Colors.transparent],
            ),
          ),
        ),
        Positioned(
          bottom: screenHeight * 0.07,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'El_Messiri',
                      fontSize: screenWidth * 0.05,
                      color: Color(0xffCE9D34),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.06,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginView()));
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF202C79)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        "تخطي",
                        style: TextStyle(
                          color: Color(0xFF202C79),
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  SizedBox(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentIndex == 1) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginView()));
                        } else {
                          controller.animateToPage(
                            currentIndex + 1,
                            duration: Duration(milliseconds: 700),
                            curve: Curves.easeOutQuart,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF202C79),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        "التالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          bottom: currentIndex == 0 ? screenHeight * 0.34 : screenHeight * 0.35,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              2,
                  (index) => AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                height: screenHeight * 0.01,
                width: currentIndex == index
                    ? screenWidth * 0.10
                    : screenWidth * 0.03,
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? Color(0xffCE9D34)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
