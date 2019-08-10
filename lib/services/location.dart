import 'package:geolocator/geolocator.dart';

class Location {
  double _Latitude;
  double _Longitude;
  List<Placemark> _MarkerPositions;

  Location(this._Latitude, this._Longitude);

  set Latitude(double value) {
    _Latitude = value;
  }

  set Longitude(double value) {
    _Longitude = value;
  }

  void getLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  Future<List<Placemark>> getMarkerPositions() async {
    _MarkerPositions = await Geolocator().placemarkFromCoordinates(
        _Latitude ?? 37.4219983, _Longitude ?? -122.084);
    return _MarkerPositions;
  }
}
