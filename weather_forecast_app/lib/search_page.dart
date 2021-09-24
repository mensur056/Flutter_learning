import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void butonFonksiyonu() {
    print('buton fonksiyonu calisdi');
  }

  void birFonksiyon() {
    print('bir fonksiyon calisdi');
  }
 void sonFonksiyon(){print('son foonksiyon calisdi ve widget silindi');}
  @override
  void initState() {
    birFonksiyon();
    super.initState();

  }
  @override
  void dispose() {
   sonFonksiyon();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    butonFonksiyonu();
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/search.jpg'))),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                print('setstate calisdi');
              });
            },
          ),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Arama çubuğu'),
                  style: TextStyle(fontSize: 35),
                ),
              )
            ],
          ),
        ));
  }
}
