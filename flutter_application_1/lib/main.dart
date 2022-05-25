import 'package:flutter/material.dart';
import 'package:flutter_application_1/font_style.dart';
import 'font_style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Sidiq"),
              backgroundColor: Color.fromARGB(255, 161, 47, 47),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.ac_unit_outlined), onPressed: () {})
              ],
            ),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                            image: AssetImage('assets/img/4.JPG'), height: 200),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Text("Nama", style: mainHeader),
                        Text("Muhammad Aulia Asshiddiqie")
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
