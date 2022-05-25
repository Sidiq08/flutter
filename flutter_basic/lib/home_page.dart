import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset('assets/img/foto.jpg'),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Muhammad Sidiq',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Cianjur, Jawabarat',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12))
                        ]),
                    Row(children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.blueAccent,
                      ),
                      Text('4.8',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14))
                    ])
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blueAccent,
                        size: 24,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.blueAccent,
                        size: 24,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Route',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blueAccent,
                        size: 24,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet sem quam. Vestibulum sit amet gravida orci. Ut scelerisque ultricies sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae Sed dapibus nibh id libero viverra, a finibus lectus malesuada. Nulla ut velit laoreet, rhoncus nibh vitae, interdum lectus. Praesent ac mi nibh. In hac habitasse platea dictumst.Etiam nunc nibh, euismod in aliquet eu, auctor et metus. Integer efficitur maximus ullamcorper.\n\nPhasellus at turpis pharetra, hendrerit enim ut, viverra neque. Donec efficitur, mi non imperdiet euismod, dolor nunc interdum velit, a maximus nulla nibh varius tellus. Quisque molestie, erat et egestas sollicitudin, dolor leo blandit mauris, in suscipit sem mi et urna. Mauris eu dolor justo. Sed consequat augue ut porta maximus. Nullam erat ligula, vestibulum eu nibh quis, faucibus venenatis mauris. Vestibulum nec nisi sapien. Sed vel nibh sed eros pulvinar aliquet nec in purus. Suspendisse vel neque finibus, euismod ante eget, vehicula tellus. Maecenas venenatis, augue at efficitur molestie, dolor dolor tempus felis, at semper libero ligula nec mauris. Nulla varius, libero id convallis tincidunt, purus enim semper massa, vel eleifend orci justo nec mi.\n\nPraesent nec dictum nisi. Nullam sit amet vehicula ligula. Nulla convallis lorem ac lorem fringilla, vitae faucibus magna malesuada.',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
