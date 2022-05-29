import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan card"),
        ),
        body: Container(
          color: Colors.amberAccent,
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.abc_rounded, "Ini Logi ke 1"),
              buildCard(Icons.access_alarms, " ini Jam"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 3,
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(
            width: 5,
          ),
          Text(text)
        ],
      ),
    );
  }
}
