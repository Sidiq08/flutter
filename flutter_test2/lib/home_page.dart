import 'package:flutter/material.dart';
import 'package:flutter_test2/theme.dart';
import 'package:flutter_test2/chat_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            // DetailPage adalah halaman yang dituju
            MaterialPageRoute(builder: (context) => ChatPage()),
          );
        },
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/img/pic (1).png',
                height: 120,
                width: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Muhammad Aulia Asshiddiqie',
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Project Manager',
                style: TextStyle(color: lightBlueColor, fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Friends', style: titleTextStyle),
                    ChatTile(
                      imgUrl: 'assets/img/pic.png',
                      name: 'Zikri Alhaq',
                      text: 'Back-end Dev',
                      time: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                        imgUrl: 'assets/img/pic-1.png',
                        name: 'Anissa Rahayu',
                        text: 'Front-end Dev',
                        time: '10.23 PM',
                        unread: false),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Task', style: titleTextStyle),
                    ChatTile(
                      imgUrl: 'assets/img/icon.png',
                      name: 'Sport Apps',
                      text: 'Ternak Uang',
                      time: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                      imgUrl: 'assets/img/icon.png',
                      name: 'Finance Apps',
                      text: 'Ternak Uang',
                      time: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                      imgUrl: 'assets/img/icon-1.png',
                      name: 'Design System FA',
                      text: 'New Document 1',
                      time: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                      imgUrl: 'assets/img/icon-2.png',
                      name: 'Showcase FA',
                      text: 'Update ',
                      time: '11.00 PM',
                      unread: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
