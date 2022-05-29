import 'package:flutter/material.dart';
import 'package:flutter_navigation/main_page.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Ini Halaman Login"),
              RaisedButton(
                child: Text("pindah ke Main Page"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MainPage();
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
