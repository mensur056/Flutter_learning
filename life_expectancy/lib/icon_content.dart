import 'package:flutter/material.dart';


const labelTextStyle =TextStyle(
      fontSize: 18, color: Color(0xFF8D8E98), fontFamily: 'Pacifico');


class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: labelTextStyle
        )
      ],
    );
  }
}
