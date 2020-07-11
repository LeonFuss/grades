//ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSizes {
  static double scale = 1;

  static double get body => 14 * scale;

  static double get bodySm => 12 * scale;

  static double get title => 16 * scale;
}

class TextStyles {
  static TextStyle get bodyFont => GoogleFonts.montserrat();

  static TextStyle get titleFont => GoogleFonts.montserrat();

  static TextStyle get title => titleFont.copyWith(fontSize: FontSizes.title);

  static TextStyle get titleLight =>
      title.copyWith(fontWeight: FontWeight.w300);

  static TextStyle get body =>
      bodyFont.copyWith(fontSize: FontSizes.body, fontWeight: FontWeight.w300);

  static TextStyle get bodySm => body.copyWith(fontSize: FontSizes.bodySm);
}

extension TextStyleHelpers on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle c(Color color) => copyWith(color: color);

  TextStyle letterSpace(double value) => copyWith(letterSpacing: value);
}
