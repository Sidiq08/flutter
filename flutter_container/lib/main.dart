import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.blueAccent,
          margin: EdgeInsets.all(10),
          // padding: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
            color: Colors.red,
            child: Container(
                margin: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 5),
                color: Colors.black,
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.amberAccent,
                            Colors.blueGrey,
                          ])),
                )),
          ),
        ),
      ),
    );
  }
}
