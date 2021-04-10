import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Data extends ChangeNotifier {
  bool darkMode = false;
  Color navColor;

  void setNavColor(Color navColor) {
    this.navColor = navColor;
  }

  void setDarkModeVal(bool val) {
    this.darkMode = val;
  }

  void toggleDarkMode() {
    this.darkMode = !this.darkMode;
    notifyListeners();
  }

  void setStatusNavBarColor() {
    if (darkMode) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: this.navColor,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      );
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: this.navColor,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
    }
    notifyListeners();
  }
}
