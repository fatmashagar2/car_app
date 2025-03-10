import 'package:flutter/material.dart';

import 'service_list_item.dart';

class ServiceList extends StatelessWidget {
  final List<Map<String, dynamic>> services;

  const ServiceList({required this.services});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) => ServiceListItem(
                  serviceName: services[index]["name"],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
