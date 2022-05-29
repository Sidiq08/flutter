import 'package:flutter/material.dart';

void main() {
  runApp(SecondPage());
}

class SecondPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Second Page"),
            ),
            body: Center(
                child: Column(children: [
              Text("Ini Halaman Second Page"),
              RaisedButton(
                  child: Text("pindah ke Main Page Lagi"),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ]))));
  }
}
