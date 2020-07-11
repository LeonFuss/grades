import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/update_grade_page.dart';

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
        color: AppColors.bottomBar,
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
                      style: Theme.of(context).textTheme.headline6),
                ),
              );
            }),
          ),
          const Spacer(
            flex: 2,
          ),
          Text(grade.description.getOrCrash(),
              style: Theme.of(context).textTheme.headline6),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
                child: PopupMenuButton<int>(
              onSelected: (value) {
                if (value == 0) {
                  context
                      .bloc<GradeActorBloc>()
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
                size: 32,
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
