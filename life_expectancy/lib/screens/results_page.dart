import 'package:flutter/material.dart';
import 'package:life_expectancy/components/bottom_button.dart';
import 'package:life_expectancy/constants.dart';
import '../components/MyContainer.dart';

class ResultsPage extends StatelessWidget {
ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Hesablama',
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
                  'Sənin Nəticən',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: MyContainer( onPress: () {},
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                     resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),BottomButton(
              buttonTitle: 'YENIDƏN HESABLA',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
