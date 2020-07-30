import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/domain/grade/subjects/value_objects.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NameField extends HookWidget {
  const NameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subjectFormBloc = useProvider(subjectFormBlocProvider);
    final textEditingController = useTextEditingController();

    return BlocConsumer<SubjectFormBloc, SubjectFormState>(
      cubit: subjectFormBloc,
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.subject.name.getOrCrash();
      },
      buildWhen: (p, c) => p.subject.name != c.subject.name,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Fachname',
              counterText: '',
            ),
            autofocus: true,
            maxLength: SubjectName.maxLength,
            maxLengthEnforced: true,
            onChanged: (value) =>
                subjectFormBloc.add(SubjectFormEvent.nameChanged(value)),
            validator: (_) => subjectFormBloc.state.subject.name.value.fold(
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
