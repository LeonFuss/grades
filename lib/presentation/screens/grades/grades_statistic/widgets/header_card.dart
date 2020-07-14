import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/header_card_painter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/collection.dart';

class HeaderCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final statisticBloc = useProvider(statisticBlocProvider);
    final gradeValue = useDropdownValue(context, 0);
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
              child: Text(
                'Letzte Noten',
                style: TextStyles.title.c(AppColors.whiteWithOpacity),
              ),
            ),
            Positioned(
              right: 24,
              top: 10,
              child: DropdownButton<int>(
                  icon: Icon(Icons.arrow_drop_down,
                      color: AppColors.whiteWithOpacity),
                  underline: const SizedBox(),
                  dropdownColor: AppColors.accent,
                  style: TextStyles.bodySm.c(AppColors.whiteWithOpacity),
                  value: gradeValue.value,
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
                    gradeValue.value = value;
                  }),
            ),
            Positioned(
              bottom: 40,
              left: 32,
              right: 40,
              child: BlocBuilder<StatisticBloc, StatisticState>(
                bloc: statisticBloc,
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
                            state.writtenGrades, gradeValue.value),
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
      KtList<Grade> writtenGrades, int gradeValue) {
    if (gradeValue == 1) {
      return writtenGrades;
    } else if (gradeValue == 2) {
      return oralGrades;
    } else {
      return grades;
    }
  }
}

ValueNotifier<int> useDropdownValue(BuildContext context, [int initialData]) {
  final result = useState<int>(initialData);
  return result;
}
