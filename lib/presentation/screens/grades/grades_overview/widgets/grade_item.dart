import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GradeItem extends StatelessWidget {
  final Grade grade;

  const GradeItem({Key key, @required this.grade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        final gradeActorBloc = gradeActorBlocProvider.read(context);
        showModal(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              title: const Text('Note löschen'),
              content: Text(
                'Nach dem Löschen ist die Note ${grade.description.getOrCrash().trim()} nicht mehr wiederherstellbar',
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('ABRECHEN'),
                ),
                FlatButton(
                  onPressed: () {
                    gradeActorBloc.add(GradeActorEvent.deleted(grade));
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'LÖSCHEN',
                    style: TextStyle(color: AppColors.trashCanColor),
                  ),
                ),
              ],
            );
          },
        );
      },
      title: Row(
        children: <Widget>[
          Text(grade.description.getOrCrash()),
          const Spacer(),
          Text(grade.value.getOrCrash().toString()),
        ],
      ),
    );
  }
}
