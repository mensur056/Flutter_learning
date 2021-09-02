import 'package:flutter/material.dart';
import 'package:life_expectancy/constants.dart';
import '../components/MyContainer.dart';

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: resultTextStyle,
                    ),
                    Text(
                      '20.0',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI result is quite low , you should eat more!',textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
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
