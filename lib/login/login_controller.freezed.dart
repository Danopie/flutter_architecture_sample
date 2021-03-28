// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  LoginIdle idle({String? error}) {
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

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) idle,
    required TResult Function() loading,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? idle,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginIdle value) idle,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginSuccessful value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginIdle value)? idle,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginSuccessful value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $LoginIdleCopyWith<$Res> {
  factory $LoginIdleCopyWith(LoginIdle value, $Res Function(LoginIdle) then) =
      _$LoginIdleCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$LoginIdleCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginIdleCopyWith<$Res> {
  _$LoginIdleCopyWithImpl(LoginIdle _value, $Res Function(LoginIdle) _then)
      : super(_value, (v) => _then(v as LoginIdle));

  @override
  LoginIdle get _value => super._value as LoginIdle;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(LoginIdle(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$LoginIdle implements LoginIdle {
  const _$LoginIdle({this.error});

  @override
  final String? error;

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

  @JsonKey(ignore: true)
  @override
  $LoginIdleCopyWith<LoginIdle> get copyWith =>
      _$LoginIdleCopyWithImpl<LoginIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) idle,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return idle(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? idle,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginIdle value) idle,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginSuccessful value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginIdle value)? idle,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginSuccessful value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LoginIdle implements LoginState {
  const factory LoginIdle({String? error}) = _$LoginIdle;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginIdleCopyWith<LoginIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginLoadingCopyWith<$Res> {
  factory $LoginLoadingCopyWith(
          LoginLoading value, $Res Function(LoginLoading) then) =
      _$LoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginLoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginLoadingCopyWith<$Res> {
  _$LoginLoadingCopyWithImpl(
      LoginLoading _value, $Res Function(LoginLoading) _then)
      : super(_value, (v) => _then(v as LoginLoading));

  @override
  LoginLoading get _value => super._value as LoginLoading;
}

/// @nodoc
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
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) idle,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? idle,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginIdle value) idle,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginSuccessful value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginIdle value)? idle,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginSuccessful value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoading;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;
}

/// @nodoc
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
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) idle,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? idle,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginIdle value) idle,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginSuccessful value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginIdle value)? idle,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginSuccessful value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements LoginState {
  const factory LoginSuccessful() = _$LoginSuccessful;
}
