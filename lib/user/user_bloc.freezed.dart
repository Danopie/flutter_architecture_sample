// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  UserLoggedIn loggedIn({required UserInfo userInfo}) {
    return UserLoggedIn(
      userInfo: userInfo,
    );
  }

  UserLoading loading() {
    return const UserLoading();
  }

  UserNotLoggedIn notLoggedIn() {
    return const UserNotLoggedIn();
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfo userInfo) loggedIn,
    required TResult Function() loading,
    required TResult Function() notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfo userInfo)? loggedIn,
    TResult Function()? loading,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedIn value) loggedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedIn value)? loggedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $UserLoggedInCopyWith<$Res> {
  factory $UserLoggedInCopyWith(
          UserLoggedIn value, $Res Function(UserLoggedIn) then) =
      _$UserLoggedInCopyWithImpl<$Res>;
  $Res call({UserInfo userInfo});
}

/// @nodoc
class _$UserLoggedInCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoggedInCopyWith<$Res> {
  _$UserLoggedInCopyWithImpl(
      UserLoggedIn _value, $Res Function(UserLoggedIn) _then)
      : super(_value, (v) => _then(v as UserLoggedIn));

  @override
  UserLoggedIn get _value => super._value as UserLoggedIn;

  @override
  $Res call({
    Object? userInfo = freezed,
  }) {
    return _then(UserLoggedIn(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }
}

/// @nodoc
class _$UserLoggedIn implements UserLoggedIn {
  const _$UserLoggedIn({required this.userInfo});

  @override
  final UserInfo userInfo;

  @override
  String toString() {
    return 'UserState.loggedIn(userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoggedIn &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userInfo);

  @JsonKey(ignore: true)
  @override
  $UserLoggedInCopyWith<UserLoggedIn> get copyWith =>
      _$UserLoggedInCopyWithImpl<UserLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfo userInfo) loggedIn,
    required TResult Function() loading,
    required TResult Function() notLoggedIn,
  }) {
    return loggedIn(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfo userInfo)? loggedIn,
    TResult Function()? loading,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedIn value) loggedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedIn value)? loggedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class UserLoggedIn implements UserState {
  const factory UserLoggedIn({required UserInfo userInfo}) = _$UserLoggedIn;

  UserInfo get userInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoggedInCopyWith<UserLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoadingCopyWith<$Res> {
  factory $UserLoadingCopyWith(
          UserLoading value, $Res Function(UserLoading) then) =
      _$UserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadingCopyWith<$Res> {
  _$UserLoadingCopyWithImpl(
      UserLoading _value, $Res Function(UserLoading) _then)
      : super(_value, (v) => _then(v as UserLoading));

  @override
  UserLoading get _value => super._value as UserLoading;
}

/// @nodoc
class _$UserLoading implements UserLoading {
  const _$UserLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfo userInfo) loggedIn,
    required TResult Function() loading,
    required TResult Function() notLoggedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfo userInfo)? loggedIn,
    TResult Function()? loading,
    TResult Function()? notLoggedIn,
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
    required TResult Function(UserLoggedIn value) loggedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedIn value)? loggedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserState {
  const factory UserLoading() = _$UserLoading;
}

/// @nodoc
abstract class $UserNotLoggedInCopyWith<$Res> {
  factory $UserNotLoggedInCopyWith(
          UserNotLoggedIn value, $Res Function(UserNotLoggedIn) then) =
      _$UserNotLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotLoggedInCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserNotLoggedInCopyWith<$Res> {
  _$UserNotLoggedInCopyWithImpl(
      UserNotLoggedIn _value, $Res Function(UserNotLoggedIn) _then)
      : super(_value, (v) => _then(v as UserNotLoggedIn));

  @override
  UserNotLoggedIn get _value => super._value as UserNotLoggedIn;
}

/// @nodoc
class _$UserNotLoggedIn implements UserNotLoggedIn {
  const _$UserNotLoggedIn();

  @override
  String toString() {
    return 'UserState.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfo userInfo) loggedIn,
    required TResult Function() loading,
    required TResult Function() notLoggedIn,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfo userInfo)? loggedIn,
    TResult Function()? loading,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoggedIn value) loggedIn,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoggedIn value)? loggedIn,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserNotLoggedIn implements UserState {
  const factory UserNotLoggedIn() = _$UserNotLoggedIn;
}
