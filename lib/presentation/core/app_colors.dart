// ignore_for_file:avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

class AppColors {
  static Color scaffold = const Color(0xfffaf3f0);
  static Color accent = const Color(0xff425195);
  static Color bottomBar = const Color(0xffFFFFFF);
  static Color secondScaffold = const Color(0xffFFE4D4);
  static Color fontColor = Colors.black54;
  static Color secondFontColor = Colors.black87;

  static List<Color> cardColors = const [
    Color(0xffD34157),
    Color(0xffF883B8),
    Color(0xff425195),
  ];

  static Color get accentWithOpacity => accent.withOpacity(0.2);

  static Color get whiteWithOpacity => Colors.white12;

  static Color get red => cardColors[0];
  static Color get redWithOpacity => red.withOpacity(0.2);

  static Color get pink => cardColors[1];
  static Color get pintWithOpacity => pink.withOpacity(0.2);

  static const Color primaryColor = Color(0xfffaf7ed);
  static const Color primaryColorLight = Color(0xffffffff);
  static const Color primaryColorDark = Color(0xffc7c4bb);
  static const Color accentColor = Color(0xff545350);
  static const Color accentColorLight = Color(0xdf545350);

  static const Color activeInputColor = Color(0xFF005D57);

  static const Color financePositive = Color(0xFF04B97F);
  static const Color financeNegative = Color(0xFFFF6951);

  static const Color trashCanColor = Colors.red;
  static const Color editColor = Color(0xFF007D51);

  static const List<Color> accountColors = <Color>[
    Color(0xFF005D57),
    Color(0xFF04B97F),
    Color(0xFF37EFBA),
    Color(0xFF007D51),
  ];

  static const List<Color> billColors = <Color>[
    Color(0xFFFFDC78),
    Color(0xFFFF6951),
    Color(0xFFFFD7D0),
    Color(0xFFFFAC12),
  ];

  static const List<Color> budgetColors = <Color>[
    Color(0xFFB2F2FF),
    Color(0xFFB15DFF),
    Color(0xFF72DEFF),
    Color(0xFF0082FB),
  ];

  static Color gray25a = const Color(0x40D8D8D8);
  static Color gray60a = const Color(0x99D8D8D8);
  static Color inputBg = const Color(0xFF26282F);
  static Color pageBg = const Color(0xFF33333D);

  static Color gray = const Color(0xFFD8D8D8);

  static Color getAccountColor(int i) {
    return getCycledColor(accountColors, i);
  }

  static Color getBillColor(int i) {
    return getCycledColor(billColors, i);
  }

  static Color getBudgetColor(int i) {
    return getCycledColor(budgetColors, i);
  }

  static Color getCycledColor(List<Color> colors, int i) {
    return colors[i % colors.length];
  }
}
