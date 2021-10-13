import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'icon_card.dart';
import 'image_and_icons.dart';

class BODY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: 'Angelica\n',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
