import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/screens/grades/grades_statistic/widgets/header_card.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GradeStatisticScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accent,
      body:
          BlocBuilder<StatisticBloc, StatisticState>(builder: (context, state) {
        return state.maybeMap(
            orElse: () => Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(AppColors.bottomBar),
                  ),
                ),
            loadSuccess: (state) {
              return ListView(
                children: <Widget>[
                  HeaderCard(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Bestes Fach',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: AppColors.bottomBar.withOpacity(0.6)),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    child: CircularPercentIndicator(
                      center: Text(
                        state.bestSubjectAverage,
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: AppColors.bottomBar),
                      ),
                      radius: 130,
                      percent: int.parse(state.bestSubjectAverage) /
                          GradeValue.highestValue,
                      backgroundColor: AppColors.bottomBar.withOpacity(0.2),
                      progressColor: AppColors.bottomBar,
                      lineWidth: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    child: Text(
                      state.bestSubjectName,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: AppColors.bottomBar),
                    ),
                  ),
                ],
              );
            });
      }),
    );
  }
}
