import 'package:flutter/material.dart';
class AlbumArt extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,width: 260,margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
      child: Image.asset('images/img.png'),
    );
  }
}
