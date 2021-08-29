import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'MyContainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: MyContainer(
                      colour: Color(0xFF1D1E33),
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      colour: Color(0xFF1D1E33),
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


