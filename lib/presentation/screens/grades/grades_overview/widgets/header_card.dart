import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/watch_all/bloc/grade_watch_all_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/header_card_painter.dart';
import 'package:kt_dart/collection.dart';

class HeaderCard extends StatefulWidget {
  @override
  _HeaderCardState createState() => _HeaderCardState();
}

class _HeaderCardState extends State<HeaderCard> {
  int gradeValue = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            height: size.height / 3.5,
            width: size.width - 32,
          ),
        ),
        Positioned(
          left: 32,
          top: 32,
          child: Text(
            'Letzte Noten',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: AppColors.scaffold),
          ),
        ),
        Positioned(
          right: 32,
          top: 20,
          child: DropdownButton<int>(
              icon: Icon(
                Icons.arrow_drop_down,
                color: AppColors.scaffold,
              ),
              underline: const SizedBox(),
              dropdownColor: AppColors.accent,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: AppColors.scaffold,
                  ),
              value: gradeValue,
              items: const [
                DropdownMenuItem(
                  value: 0,
                  child: Text(
                    'Alle Noten',
                  ),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text(
                    'Schriftliche Noten',
                  ),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text(
                    'Mündliche Noten',
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  gradeValue = value;
                });
              }),
        ),
        Positioned(
          bottom: 48,
          left: 48,
          right: 48,
          child: BlocBuilder<GradeWatchAllBloc, GradeWatchAllState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadFailure: (f, t) => Text('Fehler: $f'),
                orElse: () => SizedBox(
                  height: size.height / 3.5 - 50,
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(AppColors.scaffold),
                    ),
                  ),
                ),
                loadSuccess: (grades, oralGrades, writtenGrades, term) =>
                    CustomPaint(
                  willChange: true,
                  painter: HeaderCardPainter(
                    _getGrades(grades, oralGrades, writtenGrades),
                  ),
                  child: SizedBox(
                    height: size.height / 3.5 - 100,
                    width: size.width - 96,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  KtList<Grade> _getGrades(KtList<Grade> grades, KtList<Grade> oralGrades,
      KtList<Grade> writtenGrades) {
    if (gradeValue == 1) {
      return writtenGrades;
    } else if (gradeValue == 2) {
      return oralGrades;
    } else {
      return grades;
    }
  }
}
