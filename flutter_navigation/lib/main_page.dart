import 'package:flutter/material.dart';
import 'package:flutter_navigation/second_page.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Ini Halaman Main"),
              RaisedButton(
                child: Text("pindah ke Second Page"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
