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

  Future<void> getLocationData() async {
    locationData = await http.get(Uri.http(
        'https://www.metaweather.com/api/location/search/?query=london', ''));
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
              FlatButton(
                color: Colors.red,
                onPressed: () async {
                  print('location : $locationData');
                  await getLocationData();
                  print(locationData.body);
                  var woied=jsonDecode(locationData.body)[0]['woied'];
                  print(woied);
                },
                child: Text('click me'),
              ),
              Text(
                '$sicaklik° C',
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$sehir',
                    style: TextStyle(fontSize: 30),
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
