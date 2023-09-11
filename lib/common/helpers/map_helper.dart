import 'package:latlong2/latlong.dart';

import '../../project/domain/location_pin/models/location.dart'; // For working with latitude and longitude


LatLng calculateCenter(List<Location> locations) {
  double totalLatitude = 0.0;
  double totalLongitude = 0.0;

  for (var location in locations) {
    totalLatitude += location.latitude;
    totalLongitude += location.longitude;
  }

  double averageLatitude = totalLatitude / locations.length;
  double averageLongitude = totalLongitude / locations.length;

  return LatLng(averageLatitude, averageLongitude);
}

// Parse WebSocket message into Location objects.
Location parseLocations(String message) {
  final parts = message.split(',');
  Location location=Location(0.0, 0.0);
  for (var i = 0; i < parts.length; i += 2) {
    final latitude = double.tryParse(parts[i]);
    final longitude = double.tryParse(parts[i + 1]);
    if (latitude != null && longitude != null) {
      location=Location(latitude, longitude);
    }
  }
  return location;
}