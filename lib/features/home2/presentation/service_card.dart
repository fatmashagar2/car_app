import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final double screenWidth;

  ServiceCard({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset('assets/images/img36.png', fit: BoxFit.fill),
        ),
        Positioned(
          left: 5,
          right: 5,
          top: 0,
          child: Image.asset('assets/images/img35.png', fit: BoxFit.cover),
        ),
        Positioned(
          top: 20,
          left: 10,
          child: Image.asset('assets/images/img39.png', width: screenWidth * 0.1, height: screenWidth * 0.1, fit: BoxFit.cover),
        ),
        Positioned(
          left: 10,
          right: 10,
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('مغسله الهادي', style: TextStyle(color: Color(0xff210A64), fontFamily: 'Almarai',fontWeight: FontWeight.bold, fontSize: screenWidth * 0.035)),
              Text('الجيزه - أكتوبر', style: TextStyle(fontFamily: 'Almarai',color: Color(0xff210A64), fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
              SizedBox(height: screenWidth * 0.01),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text('313 view', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontFamily: 'Almarai'))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/img40.png', width: screenWidth * 0.08),
                  Icon(Icons.location_on, size: screenWidth * 0.06, color: Color(0xffE21B1B)),
                  Text('10 KM', style: TextStyle(fontFamily: 'Almarai',color: Color(0xff210A64), fontWeight: FontWeight.bold, fontSize: screenWidth * 0.035)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
