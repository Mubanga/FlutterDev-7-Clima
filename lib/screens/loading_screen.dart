import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final Location _LocationService = Location(0, 0);

  @override
  void initState() {
    super.initState();
    _LocationService.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
//        child: RaisedButton(
//          onPressed: () {
//            getLocation();
//          },
//          child: Text('Get Location'),
//        ),
          ),
    );
  }
}
