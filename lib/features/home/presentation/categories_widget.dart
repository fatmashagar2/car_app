import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> places = [
    "البحر الأحمر",
    "بورسعيد",
    "مرسى مطروح",
    "العين السخنة",
    "الإسكندرية",
    "شرم الشيخ",
    "الغردقة",
    "دهب",
    "العريش",
    "سيوة"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: size.height * 0.12,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: places.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            child: Column(
              children: [
                CircleAvatar(
                  radius: size.width * 0.08,
                  backgroundImage: AssetImage('assets/images/img26.png'),
                ),
                SizedBox(height: size.height * 0.008),
                Text(
                  places[index],
                  style: TextStyle(
                      fontSize: size.width * 0.03,
                      fontFamily: 'El Messiri'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
