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

    // await getAddressFromCoordinates(position!);

    // return currentPlace!;
  }

  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Future.error('Location permission denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Future.error('Location permission is permanently denied.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> getAddressFromCoordinates(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        currentPlace = place;
        print("Country: ${place.country}");
        print("City: ${place.locality}");
        print("Governorate: ${place.administrativeArea}");
        print("street: ${place.subAdministrativeArea}");
        print("street: ${place.subLocality}");
        print("street: ${place.subThoroughfare}");
        print("street: ${place.name}");
      }
    } catch (e) {
      print(e);
    }
  }
}
