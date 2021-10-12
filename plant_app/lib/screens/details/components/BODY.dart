import 'package:flutter/material.dart';

class BODY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [],
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.6,
              decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0,10),blurRadius: 60)],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60)),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        ),
      ],
    );
  }
}
