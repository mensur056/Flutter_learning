import 'package:flutter/material.dart';
import 'package:whatsapp/NavBar.dart';
import 'Body.dart';
class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Body()
        ],
      ),
    );
  }
}

