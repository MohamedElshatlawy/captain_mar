import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  String text;
  bool isRight;
  ChatListItem({this.text, this.isRight = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (isRight)
          ? Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: Color.fromRGBO(225, 255, 199, 1.0),
              child: Text(text, textAlign: TextAlign.right),
            )
          : Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: Text(text),
            ),
    );
  }
}
