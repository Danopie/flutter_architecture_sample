// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$UserState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedIn(UserInfo userInfo),
    @required Result loading(),
    @required Result notLoggedIn(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedIn(UserInfo userInfo),
    Result loading(),
    Result notLoggedIn(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedIn(UserLoggedIn value),
    @required Result loading(UserLoading value),
    @required Result notLoggedIn(UserNotLoggedIn value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedIn(UserLoggedIn value),
    Result loading(UserLoading value),
    Result notLoggedIn(UserNotLoggedIn value),
    @required Result orElse(),
  });
}

class _$UserStateTearOff {
  const _$UserStateTearOff();

  UserLoggedIn loggedIn({UserInfo userInfo}) {
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

const $UserState = _$UserStateTearOff();

class _$UserLoggedIn implements UserLoggedIn {
  const _$UserLoggedIn({this.userInfo});

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

  @override
  _$UserLoggedIn copyWith({
    Object userInfo = freezed,
  }) {
    return _$UserLoggedIn(
      userInfo: userInfo == freezed ? this.userInfo : userInfo as UserInfo,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedIn(UserInfo userInfo),
    @required Result loading(),
    @required Result notLoggedIn(),
  }) {
    assert(loggedIn != null);
    assert(loading != null);
    assert(notLoggedIn != null);
    return loggedIn(userInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedIn(UserInfo userInfo),
    Result loading(),
    Result notLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedIn(UserLoggedIn value),
    @required Result loading(UserLoading value),
    @required Result notLoggedIn(UserNotLoggedIn value),
  }) {
    assert(loggedIn != null);
    assert(loading != null);
    assert(notLoggedIn != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedIn(UserLoggedIn value),
    Result loading(UserLoading value),
    Result notLoggedIn(UserNotLoggedIn value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class UserLoggedIn implements UserState {
  const factory UserLoggedIn({UserInfo userInfo}) = _$UserLoggedIn;

  UserInfo get userInfo;

  UserLoggedIn copyWith({UserInfo userInfo});
}

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
  Result when<Result extends Object>({
    @required Result loggedIn(UserInfo userInfo),
    @required Result loading(),
    @required Result notLoggedIn(),
  }) {
    assert(loggedIn != null);
    assert(loading != null);
    assert(notLoggedIn != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedIn(UserInfo userInfo),
    Result loading(),
    Result notLoggedIn(),
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
    @required Result loggedIn(UserLoggedIn value),
    @required Result loading(UserLoading value),
    @required Result notLoggedIn(UserNotLoggedIn value),
  }) {
    assert(loggedIn != null);
    assert(loading != null);
    assert(notLoggedIn != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedIn(UserLoggedIn value),
    Result loading(UserLoading value),
    Result notLoggedIn(UserNotLoggedIn value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserState {
  const factory UserLoading() = _$UserLoading;
}

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
  Result when<Result extends Object>({
    @required Result loggedIn(UserInfo userInfo),
    @required Result loading(),
    @required Result notLoggedIn(),
  }) {
    assert(loggedIn != null);
    assert(loading != null);
    assert(notLoggedIn != null);
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedIn(UserInfo userInfo),
    Result loading(),
    Result notLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedIn(UserLoggedIn value),
    @required Result loading(UserLoading value),
    @required Result notLoggedIn(UserNotLoggedIn value),
  }) {
    assert(loggedIn != null);
    assert(loading != null);
    assert(notLoggedIn != null);
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedIn(UserLoggedIn value),
    Result loading(UserLoading value),
    Result notLoggedIn(UserNotLoggedIn value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserNotLoggedIn implements UserState {
  const factory UserNotLoggedIn() = _$UserNotLoggedIn;
}
