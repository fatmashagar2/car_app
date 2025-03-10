import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  int selectedIndex;
  final Function(int) onTap;

  CustomNavBar({required this.selectedIndex, required this.onTap});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xffF3EDF7),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.notifications_none_outlined, "مهم", 0),
                _buildNavItem(Icons.bookmark_border, "الرئيسيه", 1),
                _buildNavItem(Icons.location_on, "مكاني", 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = widget.selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ✅ خلفية المستطيل حول الأيقونة فقط
          Container(
            width: 70,
            height: 35,
            padding: EdgeInsets.all(8), // حجم المستطيل
            decoration: BoxDecoration(
              color: isSelected ? Color(0xFFE8DEF8) : Colors.transparent,
              borderRadius: BorderRadius.circular(15), // يجعلها مستطيلة بحواف ناعمة
            ),
            child: Center(
              child: Icon(
                icon,
                size: 23,
                color: isSelected ? Color(0xFF4A4459) : Color(0xff49454F),
              ),
            ),
          ),
          SizedBox(height: 5), // مسافة بين الأيقونة والنص
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: isSelected ? Color(0xFF4A4459) : Color(0xff49454F),
            ),
          ),
        ],
      ),
    );
  }
}
