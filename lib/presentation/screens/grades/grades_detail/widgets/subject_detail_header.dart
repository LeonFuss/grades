import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/subject/singel_grade_watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/domain/grade/subjects/subject.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:grades/presentation/screens/grades/grades_detail/widgets/subject_detail_header_painter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubjectDetailHeader extends SliverPersistentHeaderDelegate {
  final Subject subject;
  final BuildContext context;

  SubjectDetailHeader(this.context, {this.subject});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            color: AppColors.scaffold,
          ),
        ),
        Positioned(
          left: 4,
          top: 8,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.fontColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        Positioned(
          left: 16,
          top: 66,
          right: 100,
          child: Text(
            subject.name.getOrCrash(),
            style: TextStyles.headline,
            softWrap: true,
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: CustomPaint(
            painter: SubjectDetailHeaderPainter(),
            child: Container(
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 16,
          child:
              BlocBuilder<SingleSubjectWatcherBloc, SingleSubjectWatcherState>(
                  cubit: singleSubjectWatcherBlocProvider.read(context),
                  builder: (context, state) {
                    return Text(
                      state.maybeWhen(
                          loadSuccess: (s, t) => s.average.toString(),
                          orElse: () => '--'),
                      style: TextStyles.headline.c(AppColors.fontColor),
                    );
                  }),
        )
      ],
    );
  }

  @override
  double get maxExtent => MediaQuery.of(context).size.width / 2.5;

  @override
  double get minExtent => MediaQuery.of(context).size.width / 2.5;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
