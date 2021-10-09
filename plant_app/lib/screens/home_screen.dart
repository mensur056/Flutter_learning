import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/components/body.dart';
import 'package:plant_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38)),
        ]),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/flower.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/user-icon.svg'))
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        splashColor: kPrimaryColor,
        highlightColor: kPrimaryColor,
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}
