// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeLoading loading() {
    return const HomeLoading();
  }

  HomeDoneLoading doneLoading({String? username}) {
    return HomeDoneLoading(
      username: username,
    );
  }

  HomeNeedLogin needLogin() {
    return const HomeNeedLogin();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? username) doneLoading,
    required TResult Function() needLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? username)? doneLoading,
    TResult Function()? needLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeDoneLoading value) doneLoading,
    required TResult Function(HomeNeedLogin value) needLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeDoneLoading value)? doneLoading,
    TResult Function(HomeNeedLogin value)? needLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeLoadingCopyWith<$Res> {
  factory $HomeLoadingCopyWith(
          HomeLoading value, $Res Function(HomeLoading) then) =
      _$HomeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadingCopyWith<$Res> {
  _$HomeLoadingCopyWithImpl(
      HomeLoading _value, $Res Function(HomeLoading) _then)
      : super(_value, (v) => _then(v as HomeLoading));

  @override
  HomeLoading get _value => super._value as HomeLoading;
}

/// @nodoc
class _$HomeLoading implements HomeLoading {
  const _$HomeLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? username) doneLoading,
    required TResult Function() needLogin,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? username)? doneLoading,
    TResult Function()? needLogin,
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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeDoneLoading value) doneLoading,
    required TResult Function(HomeNeedLogin value) needLogin,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeDoneLoading value)? doneLoading,
    TResult Function(HomeNeedLogin value)? needLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  const factory HomeLoading() = _$HomeLoading;
}

/// @nodoc
abstract class $HomeDoneLoadingCopyWith<$Res> {
  factory $HomeDoneLoadingCopyWith(
          HomeDoneLoading value, $Res Function(HomeDoneLoading) then) =
      _$HomeDoneLoadingCopyWithImpl<$Res>;
  $Res call({String? username});
}

/// @nodoc
class _$HomeDoneLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeDoneLoadingCopyWith<$Res> {
  _$HomeDoneLoadingCopyWithImpl(
      HomeDoneLoading _value, $Res Function(HomeDoneLoading) _then)
      : super(_value, (v) => _then(v as HomeDoneLoading));

  @override
  HomeDoneLoading get _value => super._value as HomeDoneLoading;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(HomeDoneLoading(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$HomeDoneLoading implements HomeDoneLoading {
  const _$HomeDoneLoading({this.username});

  @override
  final String? username;

  @override
  String toString() {
    return 'HomeState.doneLoading(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeDoneLoading &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $HomeDoneLoadingCopyWith<HomeDoneLoading> get copyWith =>
      _$HomeDoneLoadingCopyWithImpl<HomeDoneLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? username) doneLoading,
    required TResult Function() needLogin,
  }) {
    return doneLoading(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? username)? doneLoading,
    TResult Function()? needLogin,
    required TResult orElse(),
  }) {
    if (doneLoading != null) {
      return doneLoading(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeDoneLoading value) doneLoading,
    required TResult Function(HomeNeedLogin value) needLogin,
  }) {
    return doneLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeDoneLoading value)? doneLoading,
    TResult Function(HomeNeedLogin value)? needLogin,
    required TResult orElse(),
  }) {
    if (doneLoading != null) {
      return doneLoading(this);
    }
    return orElse();
  }
}

abstract class HomeDoneLoading implements HomeState {
  const factory HomeDoneLoading({String? username}) = _$HomeDoneLoading;

  String? get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDoneLoadingCopyWith<HomeDoneLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNeedLoginCopyWith<$Res> {
  factory $HomeNeedLoginCopyWith(
          HomeNeedLogin value, $Res Function(HomeNeedLogin) then) =
      _$HomeNeedLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeNeedLoginCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeNeedLoginCopyWith<$Res> {
  _$HomeNeedLoginCopyWithImpl(
      HomeNeedLogin _value, $Res Function(HomeNeedLogin) _then)
      : super(_value, (v) => _then(v as HomeNeedLogin));

  @override
  HomeNeedLogin get _value => super._value as HomeNeedLogin;
}

/// @nodoc
class _$HomeNeedLogin implements HomeNeedLogin {
  const _$HomeNeedLogin();

  @override
  String toString() {
    return 'HomeState.needLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeNeedLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? username) doneLoading,
    required TResult Function() needLogin,
  }) {
    return needLogin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? username)? doneLoading,
    TResult Function()? needLogin,
    required TResult orElse(),
  }) {
    if (needLogin != null) {
      return needLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeDoneLoading value) doneLoading,
    required TResult Function(HomeNeedLogin value) needLogin,
  }) {
    return needLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeDoneLoading value)? doneLoading,
    TResult Function(HomeNeedLogin value)? needLogin,
    required TResult orElse(),
  }) {
    if (needLogin != null) {
      return needLogin(this);
    }
    return orElse();
  }
}

abstract class HomeNeedLogin implements HomeState {
  const factory HomeNeedLogin() = _$HomeNeedLogin;
}
