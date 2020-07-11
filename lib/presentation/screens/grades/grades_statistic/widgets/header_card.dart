import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/header_card_painter.dart';
import 'package:kt_dart/collection.dart';

import 'file:///C:/Development/grades/app/grades/lib/presentation/core/style/app_colors.dart';

class HeaderCard extends StatefulWidget {
  @override
  _HeaderCardState createState() => _HeaderCardState();
}

class _HeaderCardState extends State<HeaderCard> {
  int gradeValue = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Hero(
      tag: 'main_header',
      transitionOnUserGestures: true,
      child: SizedBox(
        height: size.height / 3.5,
        width: size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 16,
              top: 16,
              child: Text('Letzte Noten',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: AppColors.bottomBar.withOpacity(0.6))),
            ),
            Positioned(
              right: 24,
              top: 12,
              child: DropdownButton<int>(
                  icon: Icon(Icons.arrow_drop_down,
                      color: AppColors.bottomBar.withOpacity(0.6)),
                  underline: const SizedBox(),
                  dropdownColor: AppColors.accent,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: AppColors.bottomBar.withOpacity(0.6)),
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
              bottom: 40,
              left: 32,
              right: 40,
              child: BlocBuilder<StatisticBloc, StatisticState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loadFailure: (state) => Text('Fehler: ${state.failures}'),
                    orElse: () => SizedBox(
                      height: size.height / 3.5 - 50,
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation(AppColors.scaffold),
                        ),
                      ),
                    ),
                    loadSuccess: (state) => CustomPaint(
                      willChange: true,
                      painter: HeaderCardPainter(
                        _getGrades(state.grades, state.oralGrades,
                            state.writtenGrades),
                      ),
                      child: SizedBox(
                        height: size.height / 3.5 - 100,
                        width: size.width - 80,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
