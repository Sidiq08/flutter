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
        title: Text("Latihan image"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: 200,
              height: 300,
              padding: EdgeInsets.all(5),
              child: Image(
                image: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C4E03AQG40BwlUmnnMg/profile-displayphoto-shrink_200_200/0/1626102182096?e=1657152000&v=beta&t=jhXK5fMoFjYC-K-NvA_FErt8oICHRF07i8GHYAtUqK0"),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              color: Colors.black,
              width: 200,
              height: 300,
              padding: EdgeInsets.all(5),
              child: Image(
                image: AssetImage("img/joker_03.png"),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    ));
  }
}
