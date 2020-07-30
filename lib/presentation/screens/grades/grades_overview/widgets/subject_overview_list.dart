import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/domain/core/extension_helper.dart';
import 'package:grades/domain/grade/subjects/subject.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/app_design.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:grades/presentation/screens/dialoges/update_subject/update_subject_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';

class SubjectOverviewList extends HookWidget {
  final KtList<Subject> subjects;

  const SubjectOverviewList({Key key, @required this.subjects})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subjectActorBloc = useProvider(subjectActorBlocProvider);

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: subjects.length + 1,
      itemBuilder: (BuildContext context, int index) {
        final style = TextStyles.title;
        if (index == subjects.length) {
          return ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(PageRoutes.sharedAxis(() => const UpdateSubjectPage()));
            },
            title: Center(
                child: Icon(
              Icons.add,
              color: AppColors.accent,
              size: 28,
            )),
          );
        }
        final subject = subjects[index];
        return Column(
          children: <Widget>[
            ListTile(
              onTap: () {},
              onLongPress: () {
                showModal(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: AppDesign.roundedBorder,
                      title: const Text('Fach löschen'),
                      content: Text(
                        'Nach dem Löschen ist das Fach ${subject.name.getOrCrash().trim()} nicht mehr wiederherstellbar',
                      ),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('ABRECHEN'),
                        ),
                        FlatButton(
                          onPressed: () {
                            subjectActorBloc
                                .add(SubjectActorEvent.deleted(subject));
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
                  Text(subject.name.getOrCrash(), style: style.light),
                  const Spacer(),
                  Text(subject.average.toString(), style: style.bold),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                height: 1,
                color: AppColors.fontColor,
                thickness: 0.25,
              ),
            )
          ],
        );
      },
    );
  }
}
