import 'package:flutter/material.dart';

class ServiceHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img23.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.06,
            left: screenSize.width * 0.05,
            child: IconButton(
              icon: Icon(Icons.menu,
                color: Colors.white,
                size: screenSize.width * 0.06,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
