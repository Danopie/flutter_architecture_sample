// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(String error),
    @required Result loading(),
    @required Result success(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(String error),
    Result loading(),
    Result success(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(LoginIdle value),
    @required Result loading(LoginLoading value),
    @required Result success(LoginSuccessful value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(LoginIdle value),
    Result loading(LoginLoading value),
    Result success(LoginSuccessful value),
    @required Result orElse(),
  });
}

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  LoginIdle idle({String error}) {
    return LoginIdle(
      error: error,
    );
  }

  LoginLoading loading() {
    return const LoginLoading();
  }

  LoginSuccessful success() {
    return const LoginSuccessful();
  }
}

const $LoginState = _$LoginStateTearOff();

class _$LoginIdle implements LoginIdle {
  const _$LoginIdle({this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.idle(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginIdle &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$LoginIdle copyWith({
    Object error = freezed,
  }) {
    return _$LoginIdle(
      error: error == freezed ? this.error : error as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(String error),
    @required Result loading(),
    @required Result success(),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return idle(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(String error),
    Result loading(),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(LoginIdle value),
    @required Result loading(LoginLoading value),
    @required Result success(LoginSuccessful value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(LoginIdle value),
    Result loading(LoginLoading value),
    Result success(LoginSuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LoginIdle implements LoginState {
  const factory LoginIdle({String error}) = _$LoginIdle;

  String get error;

  LoginIdle copyWith({String error});
}

class _$LoginLoading implements LoginLoading {
  const _$LoginLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(String error),
    @required Result loading(),
    @required Result success(),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(String error),
    Result loading(),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(LoginIdle value),
    @required Result loading(LoginLoading value),
    @required Result success(LoginSuccessful value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(LoginIdle value),
    Result loading(LoginLoading value),
    Result success(LoginSuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoading;
}

class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(String error),
    @required Result loading(),
    @required Result success(),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(String error),
    Result loading(),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(LoginIdle value),
    @required Result loading(LoginLoading value),
    @required Result success(LoginSuccessful value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(LoginIdle value),
    Result loading(LoginLoading value),
    Result success(LoginSuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements LoginState {
  const factory LoginSuccessful() = _$LoginSuccessful;
}
