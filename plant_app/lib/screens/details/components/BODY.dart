import 'package:flutter/material.dart';

class BODY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [],
          ),
        ),
        Container(
          height: size.height * 0.7,
        )
      ],
    );
  }
}
