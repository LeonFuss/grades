import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:kt_dart/collection.dart';


class HeaderCardPainter extends CustomPainter {
  final KtList<Grade> grades;

  HeaderCardPainter(this.grades);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = AppColors.scaffold
      ..strokeWidth = 0.2;
    final int gradeCount = ((size.width - 40) / 40).ceil();

    const gradeValueOverview = [0, 5, 10, 15];

    final int maxGradeCount = min(gradeCount, grades.size);

    final int valueHeight =
        ((size.height * 0.94) / gradeValueOverview.last).ceil();

    final int valueWidth = ((size.width * 0.9) / gradeCount).ceil();

    for (final gradeValue in gradeValueOverview) {
      final textStyle = TextStyle(
        color: AppColors.scaffold,
        fontSize: 18,
      );
      final textSpan = TextSpan(
        text: gradeValue.toString(),
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(
        minWidth: 0,
        maxWidth: size.width,
      );
      final offset =
          Offset(0, size.height - (gradeValue * valueHeight).toDouble() - 10);
      textPainter.paint(canvas, offset);
      canvas.drawLine(Offset(40, offset.dy + 10),
          Offset(size.width, offset.dy + 10), paint);
    }
    final Path path = Path();
    paint.strokeWidth = 2;

    final List<Offset> gradeOffsets = _getOffsetList(
        gradeCount, maxGradeCount, valueHeight, valueWidth, size);

    for (final gradeOffset in gradeOffsets) {
      path.addOval(Rect.fromCircle(center: gradeOffset, radius: 4));
    }

    canvas.drawPath(path, paint);

    for (int i = 0; i < gradeOffsets.length; i++) {
      if (i == gradeOffsets.length - 1) break;
      final offset1 = gradeOffsets[i];
      final offset2 = gradeOffsets[i + 1];
      canvas.drawLine(offset1, offset2, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  List<Offset> _getOffsetList(int gradeCount, int maxGradeCount,
      int valueHeight, int valueWidth, Size size) {
    final visibleGrades = grades.asList().sublist(grades.size - maxGradeCount);
    final List<Offset> offsets = [];

    for (int i = 0; i < visibleGrades.length; i++) {
      final value = visibleGrades[i].value.getOrCrash();
      final offset = Offset((i * valueWidth + 40).toDouble(),
          size.height - (value * valueHeight).toDouble());
      offsets.add(offset);
    }
    return offsets;
  }
}
