import 'package:flutter/material.dart';


class ContDecaration extends StatelessWidget {
  final IconData icon;
  final Color colour;

  ContDecaration({required this.icon, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,color: Colors.white,),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(30),
      ),
      height: 60,
      width: 60,
    );
  }
}
