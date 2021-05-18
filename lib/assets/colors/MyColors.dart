import 'package:flutter/material.dart';

class MyColors {

  static const Color purpleLight = const Color(0xffF4ECFF);
  static const Color purple = const Color(0xFF7B23FF);
  static const Color purpleAccent = const Color(0xFFBF94FF);
  static const Color purpleDark = const Color(0xFF282231);

  static const Color greenLight = const Color(0xFFE7FFE7);
  static const Color green = const Color(0xFF00B512);
  static const Color greenAccent = const Color(0xFF99FFA3);
  static const Color greenDark = const Color(0xFF243325);

  static const Color blueLight = const Color(0xFFEBF4FF);
  static const Color blue = const Color(0xFF3883FF);
  static const Color blueAccent = const Color(0xFF82ACFF);
  static const Color blueDark = const Color(0xFF252C3A);

  static const Color pinkLight = const Color(0xFFFFEEEB);
  static const Color pink = const Color(0xFFFF2A00);
  static const Color pinkAccent = const Color(0xFFFF9783);
  static const Color pinkDark = const Color(0xFF392926);

}

extension CustomColorScheme on ColorScheme{
  Color get purpleFg => brightness == Brightness.dark ? MyColors.purpleAccent : MyColors.purple;
}