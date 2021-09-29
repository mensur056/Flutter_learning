import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_forecast_app/search_page.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String sehir = 'Ankara';
  int sicaklik = 20;
  var locationData;
  var woied;

Future <void> getLocationTemperature() async {
    var response = await http
        .get(Uri.https('https://www.metaweather.com/api/location/44418/', '/london'));
    var temperatureDataParsed=jsonDecode(response.body);
    var temp=temperatureDataParsed['consolidated_weather'][0]['the_temp'];
    print(temp);
  }

  Future<void> getLocationData() async {
    locationData = await http.get(Uri.http(
        'https://www.metaweather.com/api/location/search/?query=london', '/london'));
 var locationDataParsed=jsonDecode(locationData.body);
 woied=locationDataParsed[0]['woied'];
}

  @override
  void initState() {getLocationTemperature();
    getLocationData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('images/c.jpg'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // FlatButton(
              //  color: Colors.red,
              // onPressed: () async {
              //  print('location : $locationData');
              //   await getLocationData();
              //  print(locationData.body);
              //   var locationDataParse = jsonDecode(locationData.body);
              //    woied = locationDataParse[0]['woied'];
              //  },
              //  child: Text('click me'),
              //  ),
              Text(
                '$sicaklik° C',
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$sehir',
                    style: TextStyle(fontSize: 29),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()));
                      },
                      icon: Icon(Icons.search))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
