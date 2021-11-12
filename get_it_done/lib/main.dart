import 'package:flutter/material.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';
import 'models/color_Theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ColorThemeData().createPrefObject();
  await ItemData().createPrefObject();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData()),
    ChangeNotifierProvider<ColorThemeData>(
        create: (context) => ColorThemeData()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of<ColorThemeData>(context).loadThemeFromSharedPref();
    // Provider.of<ItemData>(context).loadItemsFromSharedPref();
    return Consumer2<ItemData, ColorThemeData>(
      builder: (context, child, itemData, colorThemeData) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ColorThemeData>(context).selectedThemeData,
        home: HomePage(),
      ),
    );
  }
}

ThemeData redTheme = ThemeData(
  primaryColor: Colors.red,
  accentColor: Colors.red,
  scaffoldBackgroundColor: Colors.red,
  appBarTheme: AppBarTheme(color: Colors.red),
  primarySwatch: Colors.red,
  textTheme: TextTheme(
    subtitle1: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
  ),
);
ThemeData greenTheme = ThemeData(
  primaryColor: Colors.green,
  accentColor: Colors.green,
  scaffoldBackgroundColor: Colors.green,
  appBarTheme: AppBarTheme(color: Colors.green),
  primarySwatch: Colors.green,
  textTheme: TextTheme(
    subtitle1: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
  ),
);
