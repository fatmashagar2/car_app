import 'package:flutter/material.dart';

class ServiceListItem extends StatelessWidget {
  final String serviceName;

  const ServiceListItem({required this.serviceName});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.005),
      padding: EdgeInsets.symmetric(
        vertical: screenSize.height * 0.01,
        horizontal: screenSize.width * 0.04,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFCACAFF),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xffE0D7F5)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back,
            color: Colors.red,
            size: screenSize.width * 0.045,
          ),
          Expanded(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.only(left: screenSize.width * 0.1),
                child: Text(
                  serviceName,
                  style: TextStyle(fontSize: screenSize.width * 0.04),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
