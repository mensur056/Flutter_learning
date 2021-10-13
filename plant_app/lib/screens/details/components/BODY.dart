import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class BODY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              SvgPicture.asset('assets/icons/back_arrow.svg')),
                    ),
                    Spacer(),
                    IconCard()
                  ],
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.29))
                    ],
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
        ),
      ],
    );
  }
}

class IconCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(offset: Offset(0, 10), blurRadius: 25),
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            offset: Offset(-15, -15),
          ),
        ],
      ),
      child: SvgPicture.asset('assets/icons/sun.svg'),
    );
  }
}
