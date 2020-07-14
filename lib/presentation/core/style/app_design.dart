//ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDesign {
  static BorderRadius get borderRadius =>
      const BorderRadius.all(Radius.circular(16));

  static RoundedRectangleBorder get roundedBorder =>
      RoundedRectangleBorder(borderRadius: borderRadius);
}
