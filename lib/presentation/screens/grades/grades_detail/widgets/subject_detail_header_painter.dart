import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grades/presentation/core/style/app_colors.dart';


class SubjectDetailHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    final paint = Paint()..color = AppColors.secondScaffold;

    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 5; j++) {
        canvas.drawCircle(
            Offset(width / 9 * 7 - width / 8 * i,
                (height / 8 * j + 20).toDouble()),
            size.width / 50,
            paint);
      }
    }

    paint.color = AppColors.accentWithOpacity;

    canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromPoints(
            Offset(width - 20, 100),
            Offset(size.width / 9, size.height / 2.5),
          ),
          bottomLeft: const Radius.circular(8),
          bottomRight: const Radius.circular(8),
          topLeft: const Radius.circular(8),
          topRight: const Radius.circular(8),
        ),
        paint);

    paint.color = AppColors.redWithOpacity;

    canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromPoints(
            const Offset(30, 20),
            Offset(width / 5, height / 1.5),
          ),
          bottomLeft: const Radius.circular(8),
          bottomRight: const Radius.circular(8),
          topLeft: const Radius.circular(8),
          topRight: const Radius.circular(8),
        ),
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
