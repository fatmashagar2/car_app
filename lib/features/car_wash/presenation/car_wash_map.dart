import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'as latLng;

class CarWashMap extends StatelessWidget {
  final latLng.LatLng carWashLocation;
  final double screenHeight;

  CarWashMap({required this.carWashLocation, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: screenHeight * 0.15,
        child: FlutterMap(
          options: MapOptions(initialCenter: carWashLocation, initialZoom: 15.0),
          children: [
            TileLayer(urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", subdomains: ['a', 'b', 'c']),
            MarkerLayer(markers: [Marker(point: carWashLocation, width: 40.0, height: 40.0, child: Icon(Icons.location_pin, color: Colors.red, size: 40.0))]),
          ],
        ),
      ),
    );
  }
}
