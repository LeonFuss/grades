import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:sized_context/sized_context.dart';

import '../update_grade_widgets.dart';
import 'grade_dialog_header_painter.dart';

class GradeDialogHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(color: AppColors.secondScaffold),
        ),
        Positioned(
          left: 4,
          top: 8,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.fontColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        Positioned(
          left: 16,
          top: 70,
          right: 100,
          child: buildSubjectName(),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: CustomPaint(
            painter: GradeDialogHeaderPainter(),
            child: Container(height: 180, width: 180),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 32,
          right: 32,
          child: ValueSlider(
            height: 80,
            width: context.widthPx - 64,
            onChanged: (v) => _onValueSliderChanged(v, context),
            color: AppColors.accent,
          ),
        ),
        Positioned(
          bottom: 60,
          left: context.widthPct(0.5) - 10,
          child: buildGradesText(),
        )
      ],
    );
  }

  BlocBuilder<GradeFormBloc, GradeFormState> buildSubjectName() {
    return BlocBuilder<GradeFormBloc, GradeFormState>(
      buildWhen: (p, c) => p.isEditing != c.isEditing,
      builder: (context, state) {
        return Text(
          state.isEditing ? 'Bearbeite \neine Note' : 'Erstelle \neine Note',
          style: TextStyles.title,
          softWrap: true,
        );
      },
    );
  }

  BlocBuilder<GradeFormBloc, GradeFormState> buildGradesText() {
    return BlocBuilder<GradeFormBloc, GradeFormState>(
      buildWhen: (p, c) => p.grade.value != c.grade.value,
      builder: (context, state) {
        return Text(state.grade.value.getOrCrash().toString(),
            style: TextStyles.headline);
      },
    );
  }

  void _onValueSliderChanged(double value, BuildContext context) {
    context.bloc<GradeFormBloc>().add(
          GradeFormEvent.gradeValueChanged(
            (min(value * 15 + 1, 15)).round().toString(),
          ),
        );
  }

  @override
  double get maxExtent => 260;

  @override
  double get minExtent => 260;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
