import 'package:geolocator/geolocator.dart';

class Location {
  var latitude;
  var longitude;
  Location();

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      this.latitude = position.latitude;
      this.longitude = position.longitude;
      print(position);
    } catch (e) {
      print(e);
    }
  }

  String getLatitude() {
    return this.latitude;
  }

  String getLongitude() {
    return this.longitude;
  }
}
