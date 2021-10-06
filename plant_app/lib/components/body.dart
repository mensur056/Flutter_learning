import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(color: kPrimaryColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
