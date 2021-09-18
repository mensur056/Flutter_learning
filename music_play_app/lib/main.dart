import 'package:flutter/material.dart';
import 'colors.dart';
import 'navbar.dart';
import 'albumart.dart';
import 'PlayerControls.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Circular'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          NavigationBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Gidget',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: darkPrimaryColor,
                fontSize: 28),
          ),
          Text(
            'The Free Nationals',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: darkPrimaryColor,
                fontSize: 20),
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Slider(
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.5),
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),PlayerControls()
        ],
      ),
    );
  }
}
