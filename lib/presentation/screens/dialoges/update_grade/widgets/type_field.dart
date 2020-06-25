import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/domain/grades/value_objects.dart';

class TypeField extends HookWidget {
  const TypeField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GradeFormBloc, GradeFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {},
      buildWhen: (p, c) => p.grade.type != c.grade.type,
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 24, bottom: 12, left: 16, right: 16),
          child: DropdownButtonFormField<String>(
              value: state.grade.type.getOrCrash(),
              decoration: const InputDecoration(
                labelText: 'Type / Name',
                counterText: '',
              ),
              onChanged: (value) => context
                  .bloc<GradeFormBloc>()
                  .add(GradeFormEvent.gradeTypeChanged(value)),
              validator: (_) =>
                  context.bloc<GradeFormBloc>().state.grade.type.value.fold(
                        (f) => f.maybeMap(
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
              items: GradeType.gradeTypes
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList()),
        );
      },
    );
  }
}
