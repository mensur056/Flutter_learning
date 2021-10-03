import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima_app/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocation();

    super.initState();
    print('this line of code is triggered');
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  void getData() async {
    Response response = await get(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');
    print(response.body);
    if(response.statusCode==200){
      String data=response.body;
    }else{print(response.statusCode);}
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
