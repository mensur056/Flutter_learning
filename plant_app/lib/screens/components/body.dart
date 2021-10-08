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
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          Container(
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                top: kDefaultPadding,
                bottom: kDefaultPadding * 2.5),
            width: size.width * 0.4,
            child: Column(
              children: [
                Image.asset('assets/images/image_1.png'),
                Container(
                  width: 158,
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
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
                                text: 'Samantha'.toUpperCase(),
                                style: Theme.of(context).textTheme.button),
                            TextSpan(
                              text: 'Russia',
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
