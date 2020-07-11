import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/app_design.dart';
import 'package:grades/presentation/core/style/text_style.dart';

class UpdateGradeFloatingActionButton extends StatelessWidget {
  final bool showFab;

  const UpdateGradeFloatingActionButton({@required this.showFab});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(microseconds: 1),
      tween: showFab ? Tween(begin: 0, end: 1) : Tween(begin: 1, end: 0),
      builder: (context, value, child) {
        return AnimatedOpacity(
          opacity: value,
          duration: const Duration(microseconds: 1),
          child: Transform.scale(
            scale: value,
            child: child,
          ),
        );
      },
      child: buildChild(context),
    );
  }

  Padding buildChild(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: RaisedButton(
        color: AppColors.accent,
        shape: RoundedBorder(),
        onPressed: () => onPressed(context),
        child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: buildContainerDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.add,
                      size: 16,
                      color: AppColors.bottomBar,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "SPEICHERN",
                  style: TextStyles.body,
                ),
              ],
            )),
      ),
    );
  }

  BoxDecoration buildContainerDecoration() {
    return BoxDecoration(
        shape: BoxShape.circle, color: AppColors.whiteWithOpacity);
  }

  void onPressed(BuildContext context) =>
      context.bloc<GradeFormBloc>().add(const GradeFormEvent.saved());
}
