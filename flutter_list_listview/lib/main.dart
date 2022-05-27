import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> Widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan List & Listview"),
          ),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    child: Text("Tambah Data"),
                    onPressed: () {
                      setState(() {
                        Widgets.add(Text(
                          "data ke-" + counter.toString(),
                          style: TextStyle(fontSize: 20),
                        ));
                        counter++;
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text("Hapus Data"),
                    onPressed: () {
                      setState(() {
                        Widgets.removeLast();
                      });
                    },
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: Widgets,
              )
            ],
          )),
    );
  }
}
