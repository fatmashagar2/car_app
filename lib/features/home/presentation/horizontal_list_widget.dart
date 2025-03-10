import 'package:flutter/material.dart';

import 'image_item.dart';

class HorizontalListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.015),
          child: Row(
            children: [
              ImageItem(
                imagePath: 'assets/images/img28.png',
                width: size.width * 0.4,
                height: size.height * 0.13,
                borderRadius: BorderRadius.circular(size.width * 0.02),
              ),
              SizedBox(width: size.width * 0.015),
              ImageItem(
                imagePath: 'assets/images/img29.jpeg',
                width: size.width * 0.28,
                height: size.height * 0.13,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(size.width * 0.05),
                  bottomLeft: Radius.circular(size.width * 0.05),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
