import 'package:flutter/material.dart';
import 'package:flutter_test2/theme.dart';
import 'chat_tile.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              size: 30,
            ),
          ),
          title: Text('Detail Project'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Row(children: [
                    Image.asset(
                      'assets/img/icon-2.png',
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Finance Apps',
                          style: titleTextStyle,
                        ),
                        Text('Ternak Uang', style: regularText),
                      ],
                    ),
                    Spacer(),
                    Center(
                      child: Ink(
                        decoration: ShapeDecoration(
                          color: greenColor,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.call),
                          color: Colors.white,
                          iconSize: 24,
                          onPressed: () {},
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 30,
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
                      children: [
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
                                style: ChatTextRead,
                              ),
                              Text('02.22 AM')
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hai..',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text('02.22 AM')
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/img/pic-1.png',
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width - (2 * 30),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(75),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Type message ...',
                          style: ChatTextUnRead,
                        ),
                        Icon(Icons.send)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
