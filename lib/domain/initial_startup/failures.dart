import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class StartUpFailures with _$StartUpFailures{
    const factory StartUpFailures.unexpected() = _Unexpected;

}