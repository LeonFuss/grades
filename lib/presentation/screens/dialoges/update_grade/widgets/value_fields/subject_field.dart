import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubjectField extends HookWidget {
  const SubjectField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradeFormBloc = useProvider(gradeFormBlocProvider);

    return BlocBuilder<GradeFormBloc, GradeFormState>(
      bloc: gradeFormBloc,
      buildWhen: (p, c) =>
          p.grade.subjectId != c.grade.subjectId || p.subjects != c.subjects,
      builder: (context, state) {
        final subjects = state.subjects;
        return Padding(
          padding: const EdgeInsets.all(16),
          child: DropdownButtonFormField<String>(
            value: state.grade.subjectId.value.fold((l) => null, (r) => r),
            decoration: const InputDecoration(
              labelText: 'Fach',
              counterText: '',
            ),
            onChanged: (value) =>
                gradeFormBloc.add(GradeFormEvent.subjectChanged(value)),
            items: subjects
                .asList()
                .map(
                  (e) => DropdownMenuItem(
                    value: e.id.getOrCrash(),
                    child: Text(
                      e.name.getOrCrash(),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
