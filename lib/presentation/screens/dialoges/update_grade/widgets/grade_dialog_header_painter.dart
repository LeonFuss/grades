import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grades/presentation/core/app_colors.dart';

class GradeDialogHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    final paint = Paint()..color = AppColors.accent;

    // canvas.drawPath(path, paint);
    canvas.drawCircle(Offset(width + 40, 30), 160, paint);
    paint.color = AppColors.pink;
    canvas.drawCircle(Offset(width - 110, -20), 120, paint);

    paint.color = AppColors.red;

    final handlePoint1 = Offset(width - 130, -10);
    final path1 = Path()
      ..addArc(Rect.fromCircle(center: Offset(width + 40, 30), radius: 160),
          pi - 0.46, 0.7)
      ..lineTo(width - 10, -10);
    canvas.drawPath(path1, paint);

    final path2 = Path()
      ..addArc(Rect.fromCircle(center: Offset(width - 110, -20), radius: 120),
          0.1, 1.4)
      ..lineTo(width - 60, -10);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
