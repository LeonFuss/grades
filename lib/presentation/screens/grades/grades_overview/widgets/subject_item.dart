import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({
    Key key,
    @required this.subject,
  }) : super(key: key);

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ExtendedNavigator.of(context).pushNamed(
          Routes.gradesDetailScreen,
          arguments: GradesDetailScreenArguments(subject: subject)),
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppColors.bottomBar,
            borderRadius: const BorderRadius.all(Radius.circular(16.0))),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                child: Container(
                  margin: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(32.0)),
                      color: AppColors.redWithOpacity),
                  child: Center(
                      child: Text(
                    subject.average.toString(),
                    style: Theme.of(context).textTheme.headline3.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        color: AppColors.fontColor),
                  )),
                ),
              ),
              const Spacer(),
              Text(
                subject.name.getOrCrash(),
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w500, letterSpacing: 1),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        }),
      ),
    );
  }
}
