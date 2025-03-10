import 'package:flutter/material.dart';

class LargeCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.03),
      child: Container(
        width: size.width,
        height: size.height * 0.45,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                'assets/images/img32.png',
                width: double.infinity,
                height: size.height * 0.22,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: size.width * 0.05,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Text(
                        "9.5 (150 تقييم)",
                        style: TextStyle(
                            fontSize: size.width * 0.045,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'El Messiri'),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    "ورشة الهادي",
                    style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'El Messiri'),
                  ),
                  SizedBox(height: size.height * 0.005),
                  Text(
                    "القاهرة - التجمع الخامس",
                    style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: Colors.black54,
                        fontFamily: 'El Messiri'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
