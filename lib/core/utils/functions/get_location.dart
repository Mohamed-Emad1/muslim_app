import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:muslim_app/core/utils/functions/get_position.dart';

Future<Position?> getLocation() async {
  Position? position = await LocationService.getCurrentLocation();

  if (position != null) {
    log("Latitude: ${position.latitude}");
    log("Longitude: ${position.longitude}");
    return position;
  } else {
    log("Unable to fetch location.");
    return null;
  }
}
