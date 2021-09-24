import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override

  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    super.initState();
    print('initState called');

  }@override
  void deactivate() {
    super.deactivate();
    print('deactivate called');
  }



  @override

  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RaisedButton(child: Text('Go To Back Screen0'),
          onPressed: () {Navigator.pop(context);},
          color: Colors.red,
        ),
      ),
    );
  }
}
