import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Center(
          child: Container(
            color: Colors.greenAccent,
            width: 200,
            height: 100,
            child: Text(
              "Perkenalkan nama saya Muhammad Aulia Asshiddiqie",
              textAlign: TextAlign.center, //mengatur align text
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
