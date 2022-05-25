import 'package:flutter/material.dart';
import 'package:flutter_test2/theme.dart';

class ChatTile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  const ChatTile(
      {required this.imgUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(children: [
        Image.asset(
          imgUrl,
          height: 55,
          width: 55,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: titleTextStyle,
            ),
            Text(
              text,
              style: unread
                  ? regularText.copyWith(
                      fontWeight: FontWeight.w500, color: blackColor)
                  : regularText,
            ),
          ],
        ),
        Spacer(),
        Text(
          time,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
