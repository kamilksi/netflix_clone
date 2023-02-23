import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

@freezed
class Success with _$Success {
  const factory Success({
    String? message,
  }) = _Success;
}
