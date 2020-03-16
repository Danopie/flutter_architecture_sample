// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Result<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T data),
    @required Result failure(String message, Exception exception),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T data),
    Result failure(String message, Exception exception),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ResultSuccess<T> value),
    @required Result failure(ResultFailure<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ResultSuccess<T> value),
    Result failure(ResultFailure<T> value),
    @required Result orElse(),
  });
}

class _$ResultTearOff {
  const _$ResultTearOff();

  ResultSuccess<T> success<T>(T data) {
    return ResultSuccess<T>(
      data,
    );
  }

  ResultFailure<T> failure<T>([String message, Exception exception]) {
    return ResultFailure<T>(
      message,
      exception,
    );
  }
}

const $Result = _$ResultTearOff();

class _$ResultSuccess<T> implements ResultSuccess<T> {
  const _$ResultSuccess(this.data) : assert(data != null);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultSuccess<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$ResultSuccess<T> copyWith({
    Object data = freezed,
  }) {
    return _$ResultSuccess<T>(
      data == freezed ? this.data : data as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T data),
    @required Result failure(String message, Exception exception),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T data),
    Result failure(String message, Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ResultSuccess<T> value),
    @required Result failure(ResultFailure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ResultSuccess<T> value),
    Result failure(ResultFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResultSuccess<T> implements Result<T> {
  const factory ResultSuccess(T data) = _$ResultSuccess<T>;

  T get data;

  ResultSuccess<T> copyWith({T data});
}

class _$ResultFailure<T> implements ResultFailure<T> {
  const _$ResultFailure([this.message, this.exception]);

  @override
  final String message;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'Result<$T>.failure(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultFailure<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(exception);

  @override
  _$ResultFailure<T> copyWith({
    Object message = freezed,
    Object exception = freezed,
  }) {
    return _$ResultFailure<T>(
      message == freezed ? this.message : message as String,
      exception == freezed ? this.exception : exception as Exception,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T data),
    @required Result failure(String message, Exception exception),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(message, exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T data),
    Result failure(String message, Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ResultSuccess<T> value),
    @required Result failure(ResultFailure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ResultSuccess<T> value),
    Result failure(ResultFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ResultFailure<T> implements Result<T> {
  const factory ResultFailure([String message, Exception exception]) =
      _$ResultFailure<T>;

  String get message;
  Exception get exception;

  ResultFailure<T> copyWith({String message, Exception exception});
}
