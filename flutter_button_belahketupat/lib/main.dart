import 'package:flutter/material.dart';
import 'colorful_btn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colorfull btn"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ColorFulButton(
                        Colors.amber, Colors.black, Icons.add_card_sharp),
                    ColorFulButton(
                        Colors.green, Colors.black, Icons.add_card_sharp),
                    ColorFulButton(
                        Colors.blue, Colors.black, Icons.add_card_sharp),
                    ColorFulButton(
                        Colors.red, Colors.black, Icons.add_card_sharp),
                  ],
                ),
                Text("Muhammad Sidiq")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
