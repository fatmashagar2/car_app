
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img24.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.05,
          right: size.width * 0.04,
          child: Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
            size: size.width * 0.08,
          ),
        ),
        Positioned(
          top: size.height * 0.05,
          left: size.width * 0.04,
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: size.width * 0.08,
          ),
        ),
        Positioned(
          bottom: size.height * 0.08,
          right: size.width * 0.05,
          child: Text(
            "أهلا يا أحمد",
            style: TextStyle(
              fontFamily: 'El Messiri',
              color: Colors.white,
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: size.height * 0.015,
          left: size.width * 0.05,
          right: size.width * 0.05,
          child: Container(
            height: size.height * 0.06,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'محتاج ايه النهارده؟....',
                  hintStyle: TextStyle(
                    color: Color(0xff666666),
                    fontSize: size.width * 0.04,
                    fontFamily: 'El Messiri',
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(size.width * 0.03),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    size: size.width * 0.06,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
