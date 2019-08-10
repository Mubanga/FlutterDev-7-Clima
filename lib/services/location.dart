import 'package:geolocator/geolocator.dart';

const String TAG = "location.dart";

class Location {
  double Latitude;
  double Longitude;
  List<Placemark> _MarkerPositions;

  Location();

//  set Latitude(double value) {
//    _Latitude = value;
//  }
//
//  set Longitude(double value) {
//    _Longitude = value;
//  }

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      Latitude = position.latitude;
      Longitude = position.longitude;
      print("{$TAG : Latitude = $Latitude , Longitude: $Longitude}");
    } catch (e) {
      print(e);
    }
  }

  Future<List<Placemark>> getMarkerPositions() async {
    _MarkerPositions = await Geolocator().placemarkFromCoordinates(
        Latitude ?? 37.4219983, Longitude ?? -122.084);
    return _MarkerPositions;
  }
}
