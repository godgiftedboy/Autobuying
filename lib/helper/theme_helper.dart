import 'package:flutter/material.dart';

class ThemeHelper {
  static const primaryColor = Color(0xff3D5CFF);
  static const grey1 = Color(0xffF0F0F0);
  static const grey2 = Color(0xffB8B8D2);
  static const grey3 = Color(0xff858597);
  static const grey4 = Color(0xffF7F8F9);
  static const grey5 = Color(0xffE8ECF4);
  static const grey6 = Color(0xff6A6A6A);
  static const grey7 = Color(0xffF9F9F9);
  static const navyBlue = Color(0xff1F1F39);

  static const MaterialColor palette1 =
      MaterialColor(_palette1PrimaryValue, <int, Color>{
    50: Color(0xFFE8ECF9),
    100: Color(0xFFC5CFF0),
    200: Color(0xFF9EAFE6),
    300: Color(0xFF778FDB),
    400: Color(0xFF5A77D4),
    500: Color(_palette1PrimaryValue),
    600: Color(0xFF3757C7),
    700: Color(0xFF2F4DC0),
    800: Color(0xFF2743B9),
    900: Color(0xFF1A32AD),
  });
  static const int _palette1PrimaryValue = 0xFF3D5FCC;
}
