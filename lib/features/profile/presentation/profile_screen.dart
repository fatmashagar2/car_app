import 'dart:io';

import 'package:car_app/features/profile/presentation/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


import 'background_image.dart';
import 'header_icons.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: BackgroundImage()),
          Positioned(
            top: screenHeight * 0.07,
            left: 20,
            right: 20,
            child: HeaderIcons(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ProfileContainer(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: _image,
              onImagePick: _pickImage,
            ),
          ),
        ],
      ),
    );
  }
}
