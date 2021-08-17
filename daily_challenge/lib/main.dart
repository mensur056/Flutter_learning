import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              backgroundColor: Colors.lightBlue,
              title: Text('Hello'),
            ),
            body: Center(
              child: Image(
                  image: NetworkImage(
                      'https://media.istockphoto.com/photos/colored-powder-explosion-on-black-background-picture-id1057506940?k=6&m=1057506940&s=612x612&w=0&h=C11yA-ESqeuCX63QkRpPyWmAMXJJvZw0niQluGnATlI=')),
            )),
      ),
    );
