import 'dart:io';

import 'package:flutter/material.dart';

import 'profile_centered_text.dart';
import 'profile_header.dart';
import 'profile_image_section.dart';
import 'profile_info_items.dart';

class ProfileContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final File? image;
  final VoidCallback onImagePick;

  ProfileContainer({
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
    required this.onImagePick,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.85,
      widthFactor: 1.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(),
            Divider(),
            ProfileImageSection(image: image, onImagePick: onImagePick),
            Divider(),
            ProfileInfoItem(title: 'الاسم'),
            Divider(),
            ProfileInfoItem(title: 'الإيميل'),
            Divider(),
            ProfileInfoItem(title: 'موبايل', value: '+92 3470967396'),
            Divider(),
            SizedBox(height: screenHeight * 0.02),
            ProfileCenteredText(),
          ],
        ),
      ),
    );
  }
}
