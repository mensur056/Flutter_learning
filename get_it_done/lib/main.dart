import 'package:flutter/material.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';
import 'models/color_Theme.dart';

void main() {
  runApp(ChangeNotifierProvider<ItemData>(
      create: (BuildContext context) => ItemData(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:redTheme,
      home: HomePage(),
    );
  }
}

