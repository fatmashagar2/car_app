import 'package:flutter/material.dart';

class ProfileInfoItem extends StatelessWidget {
  final String title;
  final String? value;

  ProfileInfoItem({required this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          if (value != null) Text(value!, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
        ],
      ),
    );
  }
}
