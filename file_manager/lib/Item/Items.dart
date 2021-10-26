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
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Simgeler(
            icon: Icons.image,
            colour: Colors.green,
          ),
          Simgeler(
            colour: Colors.orange,
            icon: Icons.view_day,
          ),
        ],
      ),
    );
  }
}

class Simgeler extends StatelessWidget {
  final Color colour;
  final IconData icon;

  const Simgeler({required this.colour, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            decoration: BoxDecoration(
                color: colour, borderRadius: BorderRadius.circular(25)),
            height: 50,
            width: 50,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: colour, borderRadius: BorderRadius.circular(25)),
          height: 50,
          width: 50,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: colour, borderRadius: BorderRadius.circular(25)),
          height: 50,
          width: 50,
          child: Icon(
            Icons.music_video,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            decoration: BoxDecoration(
                color: colour, borderRadius: BorderRadius.circular(25)),
            height: 50,
            width: 50,
            child: Icon(
              Icons.list,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
