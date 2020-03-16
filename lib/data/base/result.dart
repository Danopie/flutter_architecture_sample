import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T>{
  const factory Result.success(T data) = ResultSuccess<T>;

  const factory Result.failure([String message, Exception exception]) = ResultFailure<T>;
}


