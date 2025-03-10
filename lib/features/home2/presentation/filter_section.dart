import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  final bool isChecked;
  final String selectedFuel;
  final ValueChanged<bool?> onCheckboxChanged;
  final ValueChanged<String?> onFuelChanged;

  FilterSection({
    required this.isChecked,
    required this.selectedFuel,
    required this.onCheckboxChanged,
    required this.onFuelChanged,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: isChecked, onChanged: onCheckboxChanged),
              Text('صيانة في مكاني', style: TextStyle(fontSize: screenWidth * 0.04)),
            ],
          ),
          DropdownButton<String>(
            value: selectedFuel,
            items: [
              DropdownMenuItem(child: Text('بنزين'), value: 'بنزين'),
              DropdownMenuItem(child: Text('ديزل'), value: 'ديزل'),
            ],
            onChanged: onFuelChanged,
          ),
        ],
      ),
    );
  }
}
