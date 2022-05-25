import 'package:flutter/material.dart';
import 'package:flutter_test2/theme.dart';
import 'chat_tile.dart';
import 'theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            ElevatedButton(
              //Navigator.pop() digunakan untuk kembali ke halaman sebelumnya
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
            ChatTile(
              imgUrl: 'assets/img/icon.png',
              name: 'Finance Apps',
              text: 'Ternak Uang',
              time: 'Now',
              unread: true,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/img/pic.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: lightBlueColor,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello World',
                            style: ChatTextUnRead,
                          ),
                          Text('02.22 AM')
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
