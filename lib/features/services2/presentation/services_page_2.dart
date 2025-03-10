import 'package:flutter/material.dart';

import 'bottom_navv_bar.dart';
import 'service_list.dart';
import 'services_header.dart';

class ServicesPage2 extends StatefulWidget {
  @override
  _ServicesPage2State createState() => _ServicesPage2State();
}

class _ServicesPage2State extends State<ServicesPage2> {
  int selectedIndex = 1;
  final List<Map<String, dynamic>> services = [
    {"name": "مراكز خدمه متكامله"},
    {"name": "ميكانيكا"},
    {"name": "كهرباء"},
    {"name": "نظام التعليق (عفشه)"},
    {"name": "سمكره"},
    {"name": "زجاج"},
    {"name": "شكمان"},
    {"name": "تغيير زيت"},
    {"name": "فرامل"},
    {"name": "سروجي"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ServiceHeader(),
          ServiceList(services: services),
          BottomNavBar(
            selectedIndex: selectedIndex,
            onItemSelected: (index) => setState(() => selectedIndex = index),
          ),
        ],
      ),
    );
  }
}
