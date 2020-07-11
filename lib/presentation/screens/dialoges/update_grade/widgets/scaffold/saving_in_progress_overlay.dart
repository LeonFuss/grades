import 'package:flutter/material.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:sized_context/sized_context.dart';

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({@required this.isSaving});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.6) : Colors.transparent,
        width: context.widthPx,
        height: context.heightPx,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text('Speichern...', style: TextStyles.body)
            ],
          ),
        ),
      ),
    );
  }
}
