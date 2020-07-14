import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/domain/subjects/value_objects.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DescriptionField extends HookWidget {
  const DescriptionField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradeFormBloc = useProvider(gradeFormBlocProvider);
    final textEditingController = useTextEditingController();

    return BlocConsumer<GradeFormBloc, GradeFormState>(
      bloc: gradeFormBloc,
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.grade.description.getOrCrash();
      },
      buildWhen: (p, c) => p.grade.description != c.grade.description,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Beschreibung / Name',
              counterText: '',
            ),
            maxLength: SubjectName.maxLength,
            maxLengthEnforced: true,
            onChanged: (value) =>
                gradeFormBloc.add(GradeFormEvent.descriptionChanged(value)),
            validator: (_) => gradeFormBloc.state.grade.description.value.fold(
              (f) => f.maybeMap(
                empty: (f) => 'Der Name darf nicht leer sein',
                exceedingLength: (f) =>
                    'Die maximale Länge beträgt ${f.max} Zeichen',
                orElse: () => null,
              ),
              (_) => null,
            ),
          ),
        );
      },
    );
  }
}
