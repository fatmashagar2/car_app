import 'package:flutter/material.dart';

import 'service_card.dart';

class GridSection extends StatelessWidget {
  final double screenWidth;

  GridSection({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = screenWidth > 600 ? 3 : 2;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ServiceCard(screenWidth: screenWidth);
        },
      ),
    );
  }
}
