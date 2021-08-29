
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

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
                    child: MyContainer(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: MyContainer(colour: Color(0xFF1D1E33)),
                  )
                ],
              ),
            ),
            Expanded(
              child: MyContainer(colour: Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child:MyContainer(colour: Color(0xFF1D1E33))
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

class MyContainer extends StatelessWidget {
 MyContainer({ required this.colour});
final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:colour ,
      ),
    );
  }
}
