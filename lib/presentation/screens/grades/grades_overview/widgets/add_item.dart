import 'package:flutter/material.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/screens/dialoges/update_subject/update_subject_page.dart';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(PageRoutes.fadeThrough(() => const UpdateSubjectPage())),
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
