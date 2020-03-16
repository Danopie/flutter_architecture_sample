import 'package:flutter_architecture_sample/data/user/login_response.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

class UserBloc extends Bloc<UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository);

  @override
  void init() async {
    final result = await _userRepository.getUserInfo();

    result.maybeWhen(orElse: () {
      update(latestState.copyWith(id: UserStateId.NotLoggedIn));
    }, success: (data) {
      update(latestState.copyWith(
          id: UserStateId.LoggedIn, userInfo: Nullable(data)));
    });
  }

  @override
  UserState get initialState => UserState(id: UserStateId.Loading);

  void onUserLoginSuccessful(UserInfo userInfo) {
    _userRepository.saveUserInfo(userInfo);
    update(latestState.copyWith(
        id: UserStateId.LoggedIn, userInfo: Nullable(userInfo)));
  }

  void onUserLogout() {
    _userRepository.clearUserInfo();
    update(latestState.copyWith(
        id: UserStateId.NotLoggedIn, userInfo: Nullable(null)));
  }
}

class UserState {
  final UserStateId id;
  final UserInfo userInfo;

  const UserState({
    this.id,
    this.userInfo,
  });

  UserState copyWith({
    UserStateId id,
    Nullable<UserInfo> userInfo,
  }) {
    return UserState(
      id: id ?? this.id,
      userInfo: userInfo != null ? userInfo.value : this.userInfo,
    );
  }

  @override
  String toString() {
    return 'UserState{id: $id, userInfo: $userInfo}';
  }
}

enum UserStateId { Loading, LoggedIn, NotLoggedIn }
