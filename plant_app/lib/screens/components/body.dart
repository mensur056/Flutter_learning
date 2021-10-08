import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size,),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  press: () {},
                  country: 'Russia',
                  price: 400,
                ),
                RecomendPlantCard(
                  image: 'assets/images/image_2.png',
                  title: 'Angelica',
                  press: () {},
                  country: 'Russia',
                  price: 540,
                ),
                RecomendPlantCard(
                  image: 'assets/images/image_3.png',
                  title: 'Samantha',
                  press: () {},
                  country: 'Russia',
                  price: 400,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard(
      {required this.country,
      required this.title,
      required this.image,
      required this.press,
      required this.price});

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              width: 158,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: '$country',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                   ' \$$price',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                        ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
