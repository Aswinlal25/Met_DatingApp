import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({required int statusCode, String? message}) = _Initial;
  factory Failure.clientFailure() => const Failure(message: '', statusCode: 0);
  factory Failure.serverFailure() => const Failure(message: '', statusCode: 0);
  factory Failure.tokenExpire() => const Failure(statusCode: 401);
}
