import 'package:flutter/material.dart';

class ParcelTextField extends StatelessWidget {
  String label;
  Widget icon;
  TextEditingController controller;
  ParcelTextField({this.icon, this.label, this.controller});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: label, suffixIcon: icon),
    );
  }
}
