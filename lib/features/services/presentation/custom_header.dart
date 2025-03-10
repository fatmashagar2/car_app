import 'package:car_app/features/profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double headerHeight = MediaQuery.of(context).size.height * 0.15;
    return ClipRRect(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      child: Stack(
        children: [
          Container(
            height: headerHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img22.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.account_circle_outlined, color: Colors.white, size: 25),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.white, size: 25),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
