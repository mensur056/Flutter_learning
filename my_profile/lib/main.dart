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
                child: Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage(
                      'images/m4.jpg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Azerbaijan-A.Z.E',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 79.0, top: 18),
                child: Column(
                  children: [
                    Text(
                      '2.2K',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'followers',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 34,
              ),
              Container(
                color: Colors.white,
                width: 0.2,
                height: 21,
              ),
              SizedBox(
                width: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0),
                child: Column(
                  children: [
                    Text(
                      '465',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'following',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 34,
              ),
              Container(
                color: Colors.white,
                width: 0.2,
                height: 22,
              ),
              SizedBox(
                width: 35,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 17, top: 8, right: 17, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                        colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                        begin: Alignment.bottomRight,
                        end: Alignment.centerLeft)),
                child: Text(
                  'follow',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
