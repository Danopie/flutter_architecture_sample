// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'deep_link_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$DeepLinkState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result doneLoading(String routeName),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result doneLoading(String routeName),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(DeepLinkLoading value),
    @required Result doneLoading(DeepLinkDoneLoading value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DeepLinkLoading value),
    Result doneLoading(DeepLinkDoneLoading value),
    @required Result orElse(),
  });
}

class _$DeepLinkStateTearOff {
  const _$DeepLinkStateTearOff();

  DeepLinkLoading loading() {
    return const DeepLinkLoading();
  }

  DeepLinkDoneLoading doneLoading({String routeName}) {
    return DeepLinkDoneLoading(
      routeName: routeName,
    );
  }
}

const $DeepLinkState = _$DeepLinkStateTearOff();

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
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result doneLoading(String routeName),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result doneLoading(String routeName),
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
    @required Result loading(DeepLinkLoading value),
    @required Result doneLoading(DeepLinkDoneLoading value),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DeepLinkLoading value),
    Result doneLoading(DeepLinkDoneLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeepLinkLoading implements DeepLinkState {
  const factory DeepLinkLoading() = _$DeepLinkLoading;
}

class _$DeepLinkDoneLoading implements DeepLinkDoneLoading {
  const _$DeepLinkDoneLoading({this.routeName});

  @override
  final String routeName;

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

  @override
  _$DeepLinkDoneLoading copyWith({
    Object routeName = freezed,
  }) {
    return _$DeepLinkDoneLoading(
      routeName: routeName == freezed ? this.routeName : routeName as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result doneLoading(String routeName),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    return doneLoading(routeName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result doneLoading(String routeName),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneLoading != null) {
      return doneLoading(routeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(DeepLinkLoading value),
    @required Result doneLoading(DeepLinkDoneLoading value),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    return doneLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DeepLinkLoading value),
    Result doneLoading(DeepLinkDoneLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneLoading != null) {
      return doneLoading(this);
    }
    return orElse();
  }
}

abstract class DeepLinkDoneLoading implements DeepLinkState {
  const factory DeepLinkDoneLoading({String routeName}) = _$DeepLinkDoneLoading;

  String get routeName;

  DeepLinkDoneLoading copyWith({String routeName});
}
