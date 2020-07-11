//ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSizes {
  static double scale = 1;

  static double get body => 14 * scale;

  static double get bodySm => 12 * scale;

  static double get title => 16 * scale;

  static double get headline => 24 * scale;
}

class TextStyles {
  static TextStyle get bodyFont => GoogleFonts.montserrat();

  static TextStyle get titleFont => GoogleFonts.montserrat();

  static TextStyle get headline => titleFont.size(FontSizes.headline);

  static TextStyle get title => titleFont.size(FontSizes.title);

  static TextStyle get titleLight => title.light;

  static TextStyle get body => bodyFont.size(FontSizes.body).light;

  static TextStyle get bodySm => body.size(FontSizes.bodySm);
}

extension TextStyleHelpers on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle c(Color color) => copyWith(color: color);

  TextStyle letterSpace(double value) => copyWith(letterSpacing: value);

  TextStyle size(double size) => copyWith(fontSize: size);
}
