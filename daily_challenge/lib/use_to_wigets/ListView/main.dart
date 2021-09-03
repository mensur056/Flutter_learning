import 'package:flutter/material.dart';
import 'use_listView.dart';
void main()=>runApp(ListView());

class ListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:ListViewPage() ,);
  }
}