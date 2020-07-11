import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/widgets/grade_dialog_header_painter.dart';

import 'value_slider.dart';

class GradeDialogHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            color: AppColors.secondScaffold,
          ),
        ),
        Positioned(
          left: 4,
          top: 8,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.fontColor,
            ),
            onPressed: () => ExtendedNavigator.of(context).pop(),
          ),
        ),
        Positioned(
          left: 16,
          top: 70,
          right: 100,
          child: BlocBuilder<GradeFormBloc, GradeFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) {
              return Text(
                state.isEditing
                    ? 'Bearbeite \neine Note'
                    : 'Erstelle \neine Note',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: AppColors.secondFontColor),
                softWrap: true,
              );
            },
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: CustomPaint(
            painter: GradeDialogHeaderPainter(),
            child: Container(
              height: 180,
              width: 180,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 32,
          right: 32,
          child: ValueSlider(
            height: 80,
            width: MediaQuery.of(context).size.width - 64,
            onChanged: (double value) {
              context.bloc<GradeFormBloc>().add(
                    GradeFormEvent.gradeValueChanged(
                      (min(value * 15 + 1, 15)).round().toString(),
                    ),
                  );
            },
            color: AppColors.accent,
          ),
        ),
        Positioned(
          bottom: 60,
          left: MediaQuery.of(context).size.width / 2 - 10,
          child: BlocBuilder<GradeFormBloc, GradeFormState>(
              buildWhen: (p, c) => p.grade.value != c.grade.value,
              builder: (context, state) {
                return Text(
                  state.grade.value.getOrCrash().toString(),
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: AppColors.accent,
                        fontWeight: FontWeight.w600,
                      ),
                );
              }),
        )
      ],
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
