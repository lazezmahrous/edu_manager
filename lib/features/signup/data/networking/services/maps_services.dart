import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class MapsServices {
  MapsServices();
  Placemark? currentPlace;

  Future<Position?> fetchUserAddress() async {
    try {
      Position? position = await getCurrentLocation();
      return position;
    } catch (e) {
      Future.error(e.toString());
    }
    return null;

    // await getAddressFromCoordinates(position!);

    // return currentPlace!;
  }

  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
     return throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
      return  throw Exception('Location permission denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
     return throw Exception('Location permission is permanently denied.');
    }

    return await Geolocator.getCurrentPosition();
  }

Future<Placemark?> getAddressFromCoordinates(Position position) async {
  try {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    if (placemarks.isNotEmpty) {
      Placemark place = placemarks[0];
      debugPrint("Country: ${place.country}");
      debugPrint("City: ${place.locality}");
      debugPrint("Governorate: ${place.administrativeArea}");
      debugPrint("street: ${place.subAdministrativeArea}");
      debugPrint("street: ${place.subLocality}");
      debugPrint("street: ${place.subThoroughfare}");
      debugPrint("street: ${place.name}");

      return place;
    } else {
      throw Exception('Undefined Error');
    }
  } catch (e) {
    throw Exception(e.toString());
  }
}
}
