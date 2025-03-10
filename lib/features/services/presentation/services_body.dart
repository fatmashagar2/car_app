import 'package:flutter/material.dart';

import 'search_bar_widget.dart';
import 'service_item.dart';

class ServicesBody extends StatefulWidget {
  final List<Map<String, dynamic>> services;
  final Function(int) onServiceToggle;

  ServicesBody({required this.services, required this.onServiceToggle});

  @override
  _ServicesBodyState createState() => _ServicesBodyState();
}

class _ServicesBodyState extends State<ServicesBody> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredServices = [];

  @override
  void initState() {
    super.initState();
    filteredServices = List.from(widget.services);
  }

  void filterSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredServices = List.from(widget.services);
      } else {
        filteredServices = widget.services
            .where((service) => service["name"].toString().contains(query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SearchBarWidget(controller: searchController, onChanged: filterSearch),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: filteredServices.length,
            itemBuilder: (context, index) {
              return ServiceItem(
                name: filteredServices[index]["name"],
                selected: filteredServices[index]["selected"],
                onTap: () {
                  int originalIndex = widget.services.indexOf(filteredServices[index]);
                  widget.onServiceToggle(originalIndex);
                },
              );
            },
          ),
        ),
        SizedBox(
          width: 180,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff202C79),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            onPressed: () {},
            child: Text("حفظ"),
          ),
        ),
      ],
    );
  }
}

