import 'package:geolocator/geolocator.dart';
// import 'package:location/location.dart' as loc
import 'package:get/get.dart';

class GeolocatorService extends GetxService {
  late Geolocator geolocator;
  Future<GeolocatorService> init() async {
    geolocator = Geolocator();
    return this;
  }

  Future<bool> checkForPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // loc.Location location = loc.Location();
      // serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  Future<Position> getCurrentPosition() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    return position;
  }
}
