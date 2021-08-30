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
   Gender? selectedGender;


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
                    child: MyContainer(onPress: (){setState(() {
                      selectedGender=Gender.male;
                    });},
                      colour: selectedGender==Gender.male?activeCardColour:inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(onPress: (){setState(() {
                      selectedGender=Gender.female;
                    });},
                      colour: selectedGender==Gender.female?activeCardColour:inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child:
              MyContainer(colour: Color(0xFF1D1E33), cardChild: Text(''),onPress: (){},),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                        colour: Color(0xFF1D1E33), cardChild: Text(''),onPress: (){},),
                  ),
                  Expanded(
                    child: MyContainer(
                        colour: Color(0xFF1D1E33), cardChild: Text(''),onPress: (){}),
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
