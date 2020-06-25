import 'package:flutter/material.dart';
import 'package:grades/domain/core/extension_helper.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:kt_dart/kt.dart';

import 'add_item.dart';
import 'subject_item.dart';

class SubjectList extends StatefulWidget {
  final KtList<Subject> subjects;

  const SubjectList(this.subjects);

  @override
  _SubjectListState createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  int currentPage = 0;
  PageController _controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: widget.subjects.length + 1,
        itemBuilder: (BuildContext context, int index) {
          final Widget child = index == widget.subjects.length
              ? AddItem()
              : SubjectItem(subject: widget.subjects[index]);

          return buildAnimatedTile(index, child);
        },
      ),
    );
  }

  TweenAnimationBuilder<double> buildAnimatedTile(int index, Widget child) {
    return TweenAnimationBuilder<double>(
      curve: Curves.easeOutSine,
      duration: const Duration(milliseconds: 300),
      builder: (BuildContext context, value, Widget child) {
        return Transform.scale(scale: value, child: child);
      },
      tween: currentPage == index
          ? Tween(begin: 0.9, end: 1.1)
          : Tween(begin: 1.1, end: 0.9),
      child: child,
    );
  }

  @override
  void initState() {
    _controller = PageController(viewportFraction: 0.4);
    _controller.addListener(() {
      final next = _controller.page.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
