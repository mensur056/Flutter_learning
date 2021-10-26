import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icons(),
          Icons(),
        ],
      ),
    );
  }
}

class Icons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(25)),
          height: 50,
          width: 50,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(25)),
          height: 50,
          width: 50,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(25)),
          height: 50,
          width: 50,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(25)),
          height: 50,
          width: 50,
        )
      ],
    );
  }
}
