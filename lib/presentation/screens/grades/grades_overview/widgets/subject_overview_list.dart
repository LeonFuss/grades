import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/domain/core/extension_helper.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/routes/router.gr.dart';
import 'package:kt_dart/kt.dart';

import 'file:///C:/Development/grades/app/grades/lib/presentation/core/style/app_colors.dart';

class SubjectOverviewList extends StatelessWidget {
  final KtList<Subject> subjects;

  const SubjectOverviewList({Key key, @required this.subjects})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: subjects.length + 1,
      itemBuilder: (BuildContext context, int index) {
        final style =
            Theme.of(context).textTheme.headline6.copyWith(fontSize: 18);
        if (index == subjects.length) {
          return ListTile(
            onTap: () {
              ExtendedNavigator.of(context).pushNamed(Routes.updateSubjectPage);
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
                final noteActorBloc = context.bloc<SubjectActorBloc>();
                showDialog(
                  context: context,
                  builder: (context) {
                    return BlocProvider.value(
                      value: noteActorBloc,
                      child: AlertDialog(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
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
                              noteActorBloc
                                  .add(SubjectActorEvent.deleted(subject));
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'LÖSCHEN',
                              style: TextStyle(color: AppColors.trashCanColor),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              title: Row(
                children: <Widget>[
                  Text(
                    subject.name.getOrCrash(),
                    style: style.copyWith(
                        fontWeight: FontWeight.w100, letterSpacing: 2),
                  ),
                  const Spacer(),
                  Text(
                    subject.average.toString(),
                    style: style.copyWith(fontWeight: FontWeight.w600),
                  ),
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
