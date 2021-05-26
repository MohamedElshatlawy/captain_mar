import 'package:captain_mar/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;

  CustomTextField({this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: CustomColors.WHIRE_COLOR),
        child: TextField(
            controller: controller,
            decoration: InputDecoration(
              fillColor: CustomColors.WHIRE_COLOR,
              filled: true,
              border: InputBorder.none,
            )));
  }
}
