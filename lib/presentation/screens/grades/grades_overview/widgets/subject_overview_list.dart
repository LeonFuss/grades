import 'package:flutter/material.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:kt_dart/collection.dart';

class SubjectOverviewList extends StatelessWidget {
  final KtList<Subject> subjects;

  const SubjectOverviewList({Key key, @required this.subjects})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
