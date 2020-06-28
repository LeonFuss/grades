import 'package:flutter/material.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart';

class GradeTypeOverview extends StatelessWidget {
  final GradeType type;
  final Subject subject;

  const GradeTypeOverview(
      {Key key, @required this.type, @required this.subject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.headline5;
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 32, top: 16, bottom: 16),
      child: Row(
        children: <Widget>[
          Text(
            type.getOrCrash(),
            style: style,
          ),
          const Spacer(),
          Text(
            type == GradeType.muendlich()
                ? subject.oralAverage.toString()
                : subject.writtenAverage.toString(),
            style: style.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
