import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/recomends_plant.dart';
import 'package:plant_app/screens/components/title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(
            size: size,
          ),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturePlantCard()
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  final VoidCallback press;
  final String image;

  const FeaturePlantCard({required this.press, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2),
      height: 185,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage('assets/images/bottom_img_1.png'))),
    );
  }
}
