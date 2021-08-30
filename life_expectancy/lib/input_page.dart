import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'MyContainer.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColour = inactiveCardColour;
  Color femaleColour = inactiveCardColour;

  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleColour == inactiveCardColour) {
        maleColour = activeCardColour;
        femaleColour =inactiveCardColour;
      } else {
        maleColour = inactiveCardColour;
      }
    }
    if (selectedGender == Gender.female
    ) {
      if (femaleColour == inactiveCardColour) {
        femaleColour = activeCardColour;
        maleColour =inactiveCardColour;
      } else {
        femaleColour = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                      child: MyContainer(
                        colour: maleColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(onTap: (){setState(() {
                      updateColour(Gender.female);
                    });},
                      child: MyContainer(
                        colour: femaleColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child:
              MyContainer(colour: Color(0xFF1D1E33), cardChild: Text('')),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                        colour: Color(0xFF1D1E33), cardChild: Text('')),
                  ),
                  Expanded(
                    child: MyContainer(
                        colour: Color(0xFF1D1E33), cardChild: Text('')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
