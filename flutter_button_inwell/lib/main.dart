import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Membuat Button"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                color: Colors.amber,
                child: Text("Raised Button"),
                shape: StadiumBorder(),
                onPressed: () {},
              ),
              Material(
                borderRadius: BorderRadius.circular(7),
                elevation: 3,
                child: Container(
                  width: 150,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                            random.nextInt(256), 0.8),
                        Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                            random.nextInt(256), 0.8)
                      ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(random.nextInt(256),
                          random.nextInt(256), random.nextInt(256), 0.8),
                      borderRadius: BorderRadius.circular(7),
                      onTap: () {},
                      child: Center(
                        child: Text("My Button"),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
