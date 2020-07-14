import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/app_design.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:grades/presentation/screens/grades/grades_detail/grades_detail_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sized_context/sized_context.dart';

class SubjectItem extends HookWidget {
  const SubjectItem({
    Key key,
    @required this.subject,
  }) : super(key: key);

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    final subjectActorBloc = useProvider(subjectActorBlocProvider);
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: AppDesign.borderRadius),
      child: InkWell(
        borderRadius: AppDesign.borderRadius,
        onTap: () {
          gradeWatcherBlocProvider
              .read(context)
              .add(GradeWatcherEvent.watchSubjectGradesStarted(subject));
          Navigator.of(context)
              .push(PageRoutes.sharedAxis(() => GradesDetailScreen(subject)));
        },
        onLongPress: () {
          showModal(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: AppDesign.roundedBorder,
                title: const Text('Fach löschen'),
                content: Text(
                  "Nach dem Löschen ist das Fach ${subject.name.getOrCrash().trim()} nicht mehr wiederherstellbar",
                ),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('ABRECHEN'),
                  ),
                  FlatButton(
                    onPressed: () {
                      subjectActorBloc.add(SubjectActorEvent.deleted(subject));
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
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                child: Container(
                  margin: EdgeInsets.all(context.widthPct(0.03)),
                  decoration: BoxDecoration(
                      borderRadius: AppDesign.borderRadius,
                      color: AppColors.redWithOpacity),
                  child: Center(
                    child: Text(subject.average.toString(),
                        style: TextStyles.title),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                subject.name.getOrCrash(),
                style: TextStyles.title,
              ),
              const Spacer(
                flex: 6,
              )
            ],
          );
        }),
      ),
    );
  }
}
