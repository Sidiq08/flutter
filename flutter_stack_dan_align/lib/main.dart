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
          title: Text("Latihan Stack dan Align"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.blueAccent,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis scelerisque, felis et porttitor luctus, turpis odio placerat enim, dapibus facilisis justo massa vel dolor. Fusce tincidunt dui non nunc auctor, nec fringilla purus pulvinar. Vestibulum vitae egestas libero. Ut euismod, est et ultrices dictum, est est lacinia libero, luctus maximus arcu nulla a nisl. Sed neque dui, convallis at felis sit amet, dapibus tristique sem. Vestibulum bibendum quam vel dui rutrum, at dignissim urna tempus. Donec et vehicula orci. Vivamus eget tincidunt est, quis condimentum leo. Integer ut erat id urna posuere malesuada. In sollicitudin dolor dolor, sit amet tincidunt ligula consectetur eu. Aenean luctus leo nibh, placerat gravida enim pulvinar quis. Suspendisse dapibus libero ut ex vulputate eleifend. Sed aliquam augue diam, at eleifend leo malesuada in. Fusce eget magna eu justo lobortis cursus. Vestibulum non tellus gravida, mollis tortor in, consectetur metus. Proin tincidunt purus at tortor volutpat facilisis et vel eros.Nullam nec purus rutrum, gravida mauris eget, pellentesque enim. Phasellus ornare est lorem, et ultrices augue cursus nec. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer purus diam, mollis nec diam et, faucibus cursus augue. Vestibulum at cursus neque, non elementum nisl. In a pretium mauris. Integer id tristique lorem. Curabitur justo tortor, egestas id elementum quis, mollis non dolor. Fusce magna tortor, efficitur a mauris vitae, accumsan maximus justo. Nam vulputate fringilla aliquam. Vivamus ut orci mi. Nam vitae augue sed nibh condimentum vulputate ac id ligula. Praesent vulputate porttitor urna, eu hendrerit tortor iaculis eu. Cras eget diam vitae mi commodo mollis ut sed augue. Fusce in porttitor ipsum. Donec quis pellentesque turpis."),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis scelerisque, felis et porttitor luctus, turpis odio placerat enim, dapibus facilisis justo massa vel dolor. Fusce tincidunt dui non nunc auctor, nec fringilla purus pulvinar. Vestibulum vitae egestas libero. Ut euismod, est et ultrices dictum, est est lacinia libero, luctus maximus arcu nulla a nisl. Sed neque dui, convallis at felis sit amet, dapibus tristique sem. Vestibulum bibendum quam vel dui rutrum, at dignissim urna tempus. Donec et vehicula orci. Vivamus eget tincidunt est, quis condimentum leo. Integer ut erat id urna posuere malesuada. In sollicitudin dolor dolor, sit amet tincidunt ligula consectetur eu. Aenean luctus leo nibh, placerat gravida enim pulvinar quis. Suspendisse dapibus libero ut ex vulputate eleifend. Sed aliquam augue diam, at eleifend leo malesuada in. Fusce eget magna eu justo lobortis cursus. Vestibulum non tellus gravida, mollis tortor in, consectetur metus. Proin tincidunt purus at tortor volutpat facilisis et vel eros.Nullam nec purus rutrum, gravida mauris eget, pellentesque enim. Phasellus ornare est lorem, et ultrices augue cursus nec. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer purus diam, mollis nec diam et, faucibus cursus augue. Vestibulum at cursus neque, non elementum nisl. In a pretium mauris. Integer id tristique lorem. Curabitur justo tortor, egestas id elementum quis, mollis non dolor. Fusce magna tortor, efficitur a mauris vitae, accumsan maximus justo. Nam vulputate fringilla aliquam. Vivamus ut orci mi. Nam vitae augue sed nibh condimentum vulputate ac id ligula. Praesent vulputate porttitor urna, eu hendrerit tortor iaculis eu. Cras eget diam vitae mi commodo mollis ut sed augue. Fusce in porttitor ipsum. Donec quis pellentesque turpis.")
              ],
            ),
            Align(
              alignment: Alignment(0, 0.9),
              child: RaisedButton(
                child: Text("Tambah Data"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
