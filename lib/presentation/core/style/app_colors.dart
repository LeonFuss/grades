// ignore_for_file:avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

class AppColors {
  static Color get scaffold => const Color(0xfffaf3f0);
  static Color get accent => const Color(0xff425195);
  static Color get secondScaffold => const Color(0xffFFE4D4);
  static Color get fontColor => Colors.black54;
  static Color get secondFontColor => Colors.black87;

  static List<Color> cardColors = const [
    Color(0xffD34157),
    Color(0xffF883B8),
    Color(0xff425195),
  ];

  static Color get accentWithOpacity => accent.withOpacity(0.2);

  static Color get white => Colors.white;

  static Color get whiteWithOpacity => Colors.white54;

  static Color get red => cardColors[0];

  static Color get redWithOpacity => red.withOpacity(0.2);

  static Color get pink => cardColors[1];

  static Color get pintWithOpacity => pink.withOpacity(0.2);

  static const Color trashCanColor = Colors.red;
}
