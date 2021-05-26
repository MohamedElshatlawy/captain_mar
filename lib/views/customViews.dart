import 'package:captain_mar/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomViews {
  static showToast({String msg}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: CustomColors.PRIMARY_GREEN,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
