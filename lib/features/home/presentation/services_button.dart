import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final double width;
  final double height;

  const ServiceButton({
    required this.imagePath,
    required this.buttonText,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(size.width * 0.05),
            bottomLeft: Radius.circular(size.width * 0.05),
          ),
          child: Image.asset(
            imagePath,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: size.height * 0.015),
        SizedBox(
          width: size.width * 0.38,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff130441),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(size.width * 0.05),
                  bottomLeft: Radius.circular(size.width * 0.05),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              buttonText,
              style: TextStyle(
                  fontSize: size.width * 0.04,
                  fontFamily: 'El Messiri'),
            ),
          ),
        ),
      ],
    );
  }
}
