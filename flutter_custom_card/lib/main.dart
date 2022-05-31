import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Card"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.amber, Colors.amberAccent],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/228646315_4559872150723644_5565650294603908017_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=e3f864&_nc_ohc=ftlT2yOpGyIAX9RhjDs&_nc_ht=scontent.fbdo9-1.fna&oh=00_AT8hwxf5A_hp08qkYzqk9AUhOT-ueNQfZoKNNKgxsyQcRA&oe=629A2FDF"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              topRight: Radius.circular(7)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/228646315_4559872150723644_5565650294603908017_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=e3f864&_nc_ohc=ftlT2yOpGyIAX9RhjDs&_nc_ht=scontent.fbdo9-1.fna&oh=00_AT8hwxf5A_hp08qkYzqk9AUhOT-ueNQfZoKNNKgxsyQcRA&oe=629A2FDF"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Muhammad Aulia Asshiddiqie",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posted on ",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 14),
                                  ),
                                  Text(
                                    "July 31, 2022",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Spacer(
                                  flex: 10,
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Colors.blue[800],
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("99"),
                                Spacer(
                                  flex: 5,
                                ),
                                Icon(Icons.thumb_down, size: 15),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("0"),
                                Spacer(
                                  flex: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
