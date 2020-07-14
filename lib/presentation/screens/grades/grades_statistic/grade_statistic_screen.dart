import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:grades/presentation/screens/grades/grades_statistic/widgets/header_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GradeStatisticScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final statisticBloc = useProvider(statisticBlocProvider);
    return Scaffold(
      backgroundColor: AppColors.accent,
      body: BlocBuilder<StatisticBloc, StatisticState>(
          bloc: statisticBloc,
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(AppColors.white),
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
                          style: TextStyles.title.c(AppColors.whiteWithOpacity),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Align(
                        child: CircularPercentIndicator(
                          center: Text(
                            state.bestSubjectAverage,
                            style: TextStyles.headline.c(AppColors.white),
                          ),
                          radius: 130,
                          percent: int.parse(state.bestSubjectAverage) /
                              GradeValue.highestValue,
                          backgroundColor: AppColors.whiteWithOpacity,
                          progressColor: AppColors.white,
                          lineWidth: 4,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Align(
                        child: Text(
                          state.bestSubjectName,
                          style:
                              TextStyles.headline.c(AppColors.whiteWithOpacity),
                        ),
                      ),
                    ],
                  );
                });
          }),
    );
  }
}
