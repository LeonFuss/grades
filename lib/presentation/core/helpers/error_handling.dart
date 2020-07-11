import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/widgets.dart';

void errorBar<T>(
    BuildContext context,
    Option<Either<T, Unit>> failureOrSuccessOption,
    String Function(T failure) message) {
  failureOrSuccessOption.fold(() {}, (a) {
    a.fold(
      (failure) => FlushbarHelper.createError(
        duration: const Duration(seconds: 5),
        message: message(failure),
      ).show(context),
      (r) => Navigator.of(context).pop(),
    );
  });
}
