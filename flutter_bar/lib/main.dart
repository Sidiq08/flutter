import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_balance_outlined,
          color: Colors.white,
        ),
        title: Text(
          "Latihan AppBar",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.cyan],
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft),
              image: DecorationImage(
                  image: AssetImage("img/fast-food.png"),
                  repeat: ImageRepeat.repeat)),
        ),
      ),
    ));
  }
}
