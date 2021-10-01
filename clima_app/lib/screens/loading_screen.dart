import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = '15';
    double myMarginAsADouble;
    try {
      myMarginAsADouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }
    return Scaffold(
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.all(double.parse(myMargin)),
      ),
    );
  }
}
