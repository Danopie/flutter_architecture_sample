// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result doneLoading(String username),
    @required Result needLogin(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result doneLoading(String username),
    Result needLogin(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(HomeLoading value),
    @required Result doneLoading(HomeDoneLoading value),
    @required Result needLogin(HomeNeedLogin value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(HomeLoading value),
    Result doneLoading(HomeDoneLoading value),
    Result needLogin(HomeNeedLogin value),
    @required Result orElse(),
  });
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeLoading loading() {
    return const HomeLoading();
  }

  HomeDoneLoading doneLoading({String username}) {
    return HomeDoneLoading(
      username: username,
    );
  }

  HomeNeedLogin needLogin() {
    return const HomeNeedLogin();
  }
}

const $HomeState = _$HomeStateTearOff();

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
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result doneLoading(String username),
    @required Result needLogin(),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    assert(needLogin != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result doneLoading(String username),
    Result needLogin(),
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
    @required Result loading(HomeLoading value),
    @required Result doneLoading(HomeDoneLoading value),
    @required Result needLogin(HomeNeedLogin value),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    assert(needLogin != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(HomeLoading value),
    Result doneLoading(HomeDoneLoading value),
    Result needLogin(HomeNeedLogin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  const factory HomeLoading() = _$HomeLoading;
}

class _$HomeDoneLoading implements HomeDoneLoading {
  const _$HomeDoneLoading({this.username});

  @override
  final String username;

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

  @override
  _$HomeDoneLoading copyWith({
    Object username = freezed,
  }) {
    return _$HomeDoneLoading(
      username: username == freezed ? this.username : username as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result doneLoading(String username),
    @required Result needLogin(),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    assert(needLogin != null);
    return doneLoading(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result doneLoading(String username),
    Result needLogin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneLoading != null) {
      return doneLoading(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(HomeLoading value),
    @required Result doneLoading(HomeDoneLoading value),
    @required Result needLogin(HomeNeedLogin value),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    assert(needLogin != null);
    return doneLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(HomeLoading value),
    Result doneLoading(HomeDoneLoading value),
    Result needLogin(HomeNeedLogin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneLoading != null) {
      return doneLoading(this);
    }
    return orElse();
  }
}

abstract class HomeDoneLoading implements HomeState {
  const factory HomeDoneLoading({String username}) = _$HomeDoneLoading;

  String get username;

  HomeDoneLoading copyWith({String username});
}

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
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result doneLoading(String username),
    @required Result needLogin(),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    assert(needLogin != null);
    return needLogin();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result doneLoading(String username),
    Result needLogin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (needLogin != null) {
      return needLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(HomeLoading value),
    @required Result doneLoading(HomeDoneLoading value),
    @required Result needLogin(HomeNeedLogin value),
  }) {
    assert(loading != null);
    assert(doneLoading != null);
    assert(needLogin != null);
    return needLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(HomeLoading value),
    Result doneLoading(HomeDoneLoading value),
    Result needLogin(HomeNeedLogin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (needLogin != null) {
      return needLogin(this);
    }
    return orElse();
  }
}

abstract class HomeNeedLogin implements HomeState {
  const factory HomeNeedLogin() = _$HomeNeedLogin;
}
