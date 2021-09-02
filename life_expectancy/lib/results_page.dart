import 'package:flutter/material.dart';
import 'package:life_expectancy/constants.dart';
import 'MyContainer.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: MyContainer(
                colour: kActiveCardColour,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [Center(child: Text('Normal',style: resultTextStyle,))],
                ),
                onPress: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
