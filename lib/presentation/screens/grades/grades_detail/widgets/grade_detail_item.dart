import 'package:flutter/material.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/domain/grade/grades/grade.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/update_grade_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GradeDetailItem extends StatelessWidget {
  final Grade grade;

  const GradeDetailItem({
    Key key,
    @required this.grade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight,
                width: constraints.maxHeight,
                decoration: BoxDecoration(
                  color: AppColors.accentWithOpacity,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(grade.value.getOrCrash().toString(),
                      style: TextStyles.title),
                ),
              );
            }),
          ),
          const Spacer(
            flex: 2,
          ),
          Text(grade.description.getOrCrash(), style: TextStyles.title),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
                child: PopupMenuButton<int>(
              onSelected: (value) {
                if (value == 0) {
                  gradeActorBlocProvider
                      .read(context)
                      .add(GradeActorEvent.deleted(grade));
                } else {
                  Navigator.of(context).push(
                    PageRoutes.fadeThrough(
                      () => UpdateGradePage(
                        grade: grade,
                      ),
                    ),
                  );
                }
              },
              icon: Icon(
                Icons.more_horiz,
                size: 28,
                color: AppColors.fontColor,
              ),
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: 0,
                  child: Text('Löschen'),
                ),
                const PopupMenuItem(value: 1, child: Text('Bearbeiten'))
              ],
            )),
          )
        ],
      ),
    );
  }
}
