import 'package:flutter/material.dart';

class AppDesign {
}

class RoundedBorder extends RoundedRectangleBorder {
  const RoundedBorder({BorderSide side}) :super(
      side: side, borderRadius: const BorderRadius.all(Radius.circular(16)));
}

