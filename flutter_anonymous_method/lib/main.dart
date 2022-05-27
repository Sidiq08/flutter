import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  String pesan = "tombol belum ditekan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymouse Exam"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pesan),
              RaisedButton(
                child: Text("Tekan Saya"),
                onPressed: () {
                  setState(() {
                    pesan = "Tombol Sudah ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
