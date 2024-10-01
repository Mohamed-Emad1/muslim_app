import 'package:geolocator/geolocator.dart';
import 'package:muslim_app/core/utils/functions/Location_handeler.dart';


class LocationService {
  // This function will be called to get the latitude and longitude without any UI
  static Future<Position?> getCurrentLocation() async {
    Position? position;

    position = await LocationHandler.getCurrentPosition();
    if (position != null) {
      // You can also get the address here if needed
      // String? address = await LocationHandler.getAddressFromLatLng(position);
      // print(
      //     "Latitude: ${position.latitude}, Longitude: ${position.longitude}, Address: $address");
    } else {
      // print("Location permission denied or location service is disabled.");
    }

    return position; // Return the Position object with latitude and longitude
  }
}
