import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.bottomCenter,
      child: Row(children: [NavBarItem(),Text('Playing Now'),NavBarItem()],),
    );
  }
}
class NavBarItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
