import 'package:flutter_architecture_sample/data/user/user_info.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

class UserBloc extends Bloc<UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository);

  @override
  void init() async {
    final result = await _userRepository.getUserInfo();
    if (result.data != null) {
      update(latestState.copyWith(
          id: UserStateId.LoggedIn, userInfo: result.data));
    } else {
      update(latestState.copyWith(id: UserStateId.NotLoggedIn));
    }
  }

  @override
  UserState get initialState => UserState(id: UserStateId.Loading);

  void onUserLoginSuccessful(UserInfo userInfo) {
    _userRepository.saveUserInfo(userInfo);
    update(latestState.copyWith(id: UserStateId.LoggedIn, userInfo: userInfo));
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
    UserInfo userInfo,
  }) {
    return UserState(
      id: id ?? this.id,
      userInfo: userInfo ?? this.userInfo,
    );
  }
}

enum UserStateId { Loading, LoggedIn, NotLoggedIn }
