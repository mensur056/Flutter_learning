import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09031D),
      appBar: AppBar(
        backgroundColor: Color(0xff09031D),
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 7),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('images/m4.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Column(
                  children: [
                    Text(
                      'Mensur Serxanov',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white),
                        Text(
                          'Azerbaijan',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
