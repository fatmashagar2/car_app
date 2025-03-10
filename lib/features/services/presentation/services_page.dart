
import 'package:flutter/material.dart';

import 'custom_bottom_nav_bar.dart';
import 'custom_header.dart';
import 'services_body.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  int selectedIndex = 1;

  List<Map<String, dynamic>> services = [
    {"name": "مراكز خدمه متكامله", "selected": true},
    {"name": "ميكانيكا", "selected": false},
    {"name": "كهرباء", "selected": false},
    {"name": "نظام التعليق (عفشه)", "selected": true},
    {"name": "سمكره", "selected": false},
    {"name": "زجاج", "selected": false},
    {"name": "شكمان", "selected": false},
    {"name": "تغيير زيت", "selected": false},
    {"name": "غسيل", "selected": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomHeader(),
          Expanded(
            child: ServicesBody(services: services, onServiceToggle: (index) {
              setState(() {
                services[index]["selected"] = !services[index]["selected"];
              });
            }),
          ),
          CustomNavBar(selectedIndex: selectedIndex, onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
        ],
      ),
    );
  }
}
