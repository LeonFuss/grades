import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class StartUpFailures with _$Failures{
    const factory StartUpFailures.unexpected() = _Unexpected;

}