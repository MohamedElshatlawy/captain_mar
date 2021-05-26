import 'package:flutter/material.dart';

class ScreenTitleProvider extends ChangeNotifier {
  String title = 'الرئيسية';
  int currentIndex = 0;

  void setTitleFromIndex(int index) {
    currentIndex = index;
    title = mapIndexTitle(index);
    notifyListeners();
  }

  void setTitle(String t) {
    title = t;
    notifyListeners();
  }

  String mapIndexTitle(int i) {
    switch (i) {
      case 0:
        return 'الرئيسية';
      case 1:
        return 'الإشعارات';
      case 2:
        return 'طلب طرد';
      case 3:
        return 'طلباتي';
      default:
        return 'الاعدادات';
    }
  }
}
