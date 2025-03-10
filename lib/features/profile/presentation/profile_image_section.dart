import 'dart:io';

import 'package:flutter/material.dart';

class ProfileImageSection extends StatelessWidget {
  final File? image;
  final VoidCallback onImagePick;

  ProfileImageSection({required this.image, required this.onImagePick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onImagePick,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('الصورة', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                child: image == null
                    ? Icon(Icons.person, size: 40, color: Colors.grey[600])
                    : ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.file(image!, width: 50, height: 50, fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
            ],
          ),
        ],
      ),
    );
  }
}
