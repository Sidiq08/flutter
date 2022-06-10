import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Tab"),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.comment),
                  text: "Comment",
                ),
                Tab(
                  icon: Icon(Icons.key),
                  text: "Key",
                ),
                Tab(
                  icon: Icon(Icons.verified_user_sharp),
                  text: "Shield",
                ),
                Tab(
                  icon: Icon(Icons.av_timer),
                  text: "Timer",
                ),
              ]),
            ),
            body: TabBarView(children: <Widget>[
              Center(
                child: Text("tab 1"),
              ),
              Center(
                child: Text("tab 2"),
              ),
              Center(
                child: Text("tab 3"),
              ),
              Center(
                child: Text("tab 4"),
              ),
            ]),
          )),
    );
  }
}
