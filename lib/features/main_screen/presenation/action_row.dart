import 'package:flutter/material.dart';

class ActionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconCard(Icons.add, "ضيف إعلان", screenWidth),
        buildIconCard(Icons.add, "ضيف مكانك", screenWidth),
        buildImageCard("assets/images/img21.png", "مغسلة الهادي", screenWidth),
      ],
    );
  }

  Widget buildIconCard(IconData icon, String title, double screenWidth) {
    return Column(
      children: [
        Container(
          width: screenWidth * 0.26,
          height: screenWidth * 0.26,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff2A3AA2), width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.12,
                height: screenWidth * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xff2A3AA2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(icon, size: screenWidth * 0.06, color: Colors.white),
                ),
              ),
              SizedBox(height: screenWidth * 0.02),
              Text(
                title,
                style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'El_Messiri',
                  color: Color(0xff2A3AA2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildImageCard(String imagePath, String title, double screenWidth) {
    return Column(
      children: [
        Container(
          width: screenWidth * 0.26,
          height: screenWidth * 0.26,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff2A3AA2), width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: screenWidth * 0.06,
                backgroundImage: AssetImage(imagePath),
              ),
              SizedBox(height: screenWidth * 0.02),
              Text(
                title,
                style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'El_Messiri',
                  color: Color(0xff2A3AA2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
