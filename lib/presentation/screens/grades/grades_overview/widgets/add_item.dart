import 'package:flutter/material.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/app_design.dart';
import 'package:grades/presentation/screens/dialoges/update_subject/update_subject_page.dart';
import 'package:sized_context/sized_context.dart';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(PageRoutes.fadeThrough(() => const UpdateSubjectPage())),
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.all(Radius.circular(16.0))),
        child: LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth,
            child: Container(
              margin: EdgeInsets.all(context.widthPct(0.03)),
              decoration: BoxDecoration(
                  borderRadius: AppDesign.borderRadius,
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
