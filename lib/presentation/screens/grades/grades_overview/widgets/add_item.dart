import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          ExtendedNavigator.of(context).pushNamed(Routes.updateSubjectPage),
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppColors.bottomBar,
            borderRadius: const BorderRadius.all(Radius.circular(16.0))),
        child: LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth,
            child: Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                  color: AppColors.accentWithOpacity),
              child: Center(
                  child: Icon(
                Icons.add,
                color: AppColors.accent,
                size: 40,
              )),
            ),
          );
        }),
      ),
    );
  }
}
