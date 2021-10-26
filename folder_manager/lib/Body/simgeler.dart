import 'package:flutter/material.dart';

class Simgeler extends StatefulWidget {
  @override
  _SimgelerState createState() => _SimgelerState();
}

class _SimgelerState extends State<Simgeler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ContDecaration(),
              ),
              ContDecaration(),
              ContDecaration(),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: ContDecaration(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ContDecaration(),
              ),
              ContDecaration(),
              ContDecaration(),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: ContDecaration(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContDecaration extends StatelessWidget {
  final IconData icon;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(child: Icon(icon),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      height: 60,
      width: 60,
    );
  }
}
