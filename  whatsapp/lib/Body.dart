import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Users(
                  text: '643.20(Melumat Qrupu)',
                ),
                Users(
                  text: 'Keep "typing..',
                ),
                Users(
                  text: '643.20 Telebeler',
                ),
                Users(
                  text: 'Kerim',
                ),
                Users(
                  text: 'Asim',
                ),
                Users(
                  text: 'Ilahe',
                ),
                Users(
                  text: 'Ana',
                ),
                Users(
                  text: 'Abuzer',
                ),
                Users(
                  text: 'Necmeddin',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Users extends StatelessWidget {
  final String text;

  const Users({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          child: Image.asset('images/user.jpg'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Person1',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Test')
          ],
        )
      ],
    );
  }
}
