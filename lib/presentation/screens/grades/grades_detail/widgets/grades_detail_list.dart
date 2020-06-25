import 'package:flutter/material.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/grade_item.dart';
import 'package:kt_dart/collection.dart';

class GradesDetailList extends StatelessWidget {
  final Subject subject;
  final KtList<Grade> writtenGrades;
  final KtList<Grade> oralGrades;

  const GradesDetailList(
      {Key key,
      @required this.writtenGrades,
      @required this.oralGrades,
      @required this.subject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text('Schriftliche Noten'),
              const Spacer(),
              Text(subject.writtenAverage.toString())
            ],
          ),
          if (writtenGrades.isNotEmpty()) ...[
            for (Grade writtenGrade in writtenGrades.asList())
              GradeItem(grade: writtenGrade),
          ],
          if (writtenGrades.isEmpty())
            const Text('Es sind noch keine schriftlichen Noten vorhanden'),
          Row(
            children: <Widget>[
              const Text('Mündliche Noten'),
              const Spacer(),
              Text(subject.oralAverage.toString())
            ],
          ),
          if (oralGrades.isNotEmpty()) ...[
            for (Grade oralGrade in oralGrades.asList())
              GradeItem(grade: oralGrade),
          ],
          if (oralGrades.isEmpty())
            const Text('Es sind noch keine mündlichen Noten vorhanden')
        ],
      ),
    );
  }
}
