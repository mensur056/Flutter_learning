import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Temanizi secin'),
        ),
        body: SwitchCard());
  }
}

class SwitchCard extends StatefulWidget {
  @override
  _SwitchCardState createState() => _SwitchCardState();
}

class _SwitchCardState extends State<SwitchCard> {
   bool _value=true;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SwitchListTile(title: Text('Change Theme Color'),
        value: _value,
        onChanged: (bool value) {setState(() {
          _value = value;
        });

        },
      ),
    );
  }
}
