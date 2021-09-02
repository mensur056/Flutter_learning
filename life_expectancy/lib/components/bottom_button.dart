import '../constants.dart';
import '../screens/input_page.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 40,
      ),
    );
  }
}