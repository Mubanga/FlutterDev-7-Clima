import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<http.Response> getData() async {
    var url =
        "https://samples.openweathermap.org/data/2.5/weather?id=2172797&appid=b6907d289e10d714a6e88b30761fae22";
    http.Response response = await http.get(url);
    print(
        "{API OpenWeatherMap: Status Code = ${response.statusCode} Response = ${response.body}");
    return response;
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Center(),
    );
  }

  void getLocation() async {
    Location _LocationService = Location();
    await _LocationService.getLocation();
    print("Current Latitude = ${_LocationService.Latitude}");
    print("Current Longitude = ${_LocationService.Longitude}");
  }
}
