import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String name;
  final bool selected;
  final VoidCallback onTap;

  ServiceItem({required this.name, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 3.5),
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFFCACAFF),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xffE0D7F5)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(name, textAlign: TextAlign.right, style: TextStyle(fontSize: 16)),
            ),
            if (selected) Icon(Icons.check_box, color: Color(0xff65558F)),
          ],
        ),
      ),
    );
  }
}
