import 'package:flutter/material.dart';
import 'package:response/response.dart';

class CustomRoundedButton extends StatelessWidget {
  String text;
  Function pressed;
  Color backgroundColor;
  Color textColor;
  Color borderColor;
  Icon icon;
  CustomRoundedButton({
    this.pressed,
    this.text,
    this.backgroundColor,
    this.borderColor,
    this.icon,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponseUI.instance.screenWidth,
      child: RaisedButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: borderColor)),
        color: backgroundColor,
        onPressed: pressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor),
            ),
            (icon == null) ? Container() : icon
          ],
        ),
      ),
    );
  }
}
