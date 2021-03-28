// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'deep_link_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeepLinkStateTearOff {
  const _$DeepLinkStateTearOff();

  DeepLinkLoading loading() {
    return const DeepLinkLoading();
  }

  DeepLinkDoneLoading doneLoading({String? routeName}) {
    return DeepLinkDoneLoading(
      routeName: routeName,
    );
  }
}

/// @nodoc
const $DeepLinkState = _$DeepLinkStateTearOff();

/// @nodoc
mixin _$DeepLinkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? routeName) doneLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? routeName)? doneLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeepLinkLoading value) loading,
    required TResult Function(DeepLinkDoneLoading value) doneLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeepLinkLoading value)? loading,
    TResult Function(DeepLinkDoneLoading value)? doneLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLinkStateCopyWith<$Res> {
  factory $DeepLinkStateCopyWith(
          DeepLinkState value, $Res Function(DeepLinkState) then) =
      _$DeepLinkStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeepLinkStateCopyWithImpl<$Res>
    implements $DeepLinkStateCopyWith<$Res> {
  _$DeepLinkStateCopyWithImpl(this._value, this._then);

  final DeepLinkState _value;
  // ignore: unused_field
  final $Res Function(DeepLinkState) _then;
}

/// @nodoc
abstract class $DeepLinkLoadingCopyWith<$Res> {
  factory $DeepLinkLoadingCopyWith(
          DeepLinkLoading value, $Res Function(DeepLinkLoading) then) =
      _$DeepLinkLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeepLinkLoadingCopyWithImpl<$Res>
    extends _$DeepLinkStateCopyWithImpl<$Res>
    implements $DeepLinkLoadingCopyWith<$Res> {
  _$DeepLinkLoadingCopyWithImpl(
      DeepLinkLoading _value, $Res Function(DeepLinkLoading) _then)
      : super(_value, (v) => _then(v as DeepLinkLoading));

  @override
  DeepLinkLoading get _value => super._value as DeepLinkLoading;
}

/// @nodoc
class _$DeepLinkLoading implements DeepLinkLoading {
  const _$DeepLinkLoading();

  @override
  String toString() {
    return 'DeepLinkState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeepLinkLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? routeName) doneLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? routeName)? doneLoading,
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
    required TResult Function(DeepLinkLoading value) loading,
    required TResult Function(DeepLinkDoneLoading value) doneLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeepLinkLoading value)? loading,
    TResult Function(DeepLinkDoneLoading value)? doneLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeepLinkLoading implements DeepLinkState {
  const factory DeepLinkLoading() = _$DeepLinkLoading;
}

/// @nodoc
abstract class $DeepLinkDoneLoadingCopyWith<$Res> {
  factory $DeepLinkDoneLoadingCopyWith(
          DeepLinkDoneLoading value, $Res Function(DeepLinkDoneLoading) then) =
      _$DeepLinkDoneLoadingCopyWithImpl<$Res>;
  $Res call({String? routeName});
}

/// @nodoc
class _$DeepLinkDoneLoadingCopyWithImpl<$Res>
    extends _$DeepLinkStateCopyWithImpl<$Res>
    implements $DeepLinkDoneLoadingCopyWith<$Res> {
  _$DeepLinkDoneLoadingCopyWithImpl(
      DeepLinkDoneLoading _value, $Res Function(DeepLinkDoneLoading) _then)
      : super(_value, (v) => _then(v as DeepLinkDoneLoading));

  @override
  DeepLinkDoneLoading get _value => super._value as DeepLinkDoneLoading;

  @override
  $Res call({
    Object? routeName = freezed,
  }) {
    return _then(DeepLinkDoneLoading(
      routeName: routeName == freezed
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$DeepLinkDoneLoading implements DeepLinkDoneLoading {
  const _$DeepLinkDoneLoading({this.routeName});

  @override
  final String? routeName;

  @override
  String toString() {
    return 'DeepLinkState.doneLoading(routeName: $routeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeepLinkDoneLoading &&
            (identical(other.routeName, routeName) ||
                const DeepCollectionEquality()
                    .equals(other.routeName, routeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(routeName);

  @JsonKey(ignore: true)
  @override
  $DeepLinkDoneLoadingCopyWith<DeepLinkDoneLoading> get copyWith =>
      _$DeepLinkDoneLoadingCopyWithImpl<DeepLinkDoneLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? routeName) doneLoading,
  }) {
    return doneLoading(routeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? routeName)? doneLoading,
    required TResult orElse(),
  }) {
    if (doneLoading != null) {
      return doneLoading(routeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeepLinkLoading value) loading,
    required TResult Function(DeepLinkDoneLoading value) doneLoading,
  }) {
    return doneLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeepLinkLoading value)? loading,
    TResult Function(DeepLinkDoneLoading value)? doneLoading,
    required TResult orElse(),
  }) {
    if (doneLoading != null) {
      return doneLoading(this);
    }
    return orElse();
  }
}

abstract class DeepLinkDoneLoading implements DeepLinkState {
  const factory DeepLinkDoneLoading({String? routeName}) =
      _$DeepLinkDoneLoading;

  String? get routeName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeepLinkDoneLoadingCopyWith<DeepLinkDoneLoading> get copyWith =>
      throw _privateConstructorUsedError;
}
