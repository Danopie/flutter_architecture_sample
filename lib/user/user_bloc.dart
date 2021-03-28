import 'package:flutter_architecture_sample/user/data/login_response.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightweight_bloc/src/bloc.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository);

  @override
  void init() async {
    try {
      final data = await _userRepository.getUserInfo();
      update(UserState.loggedIn(userInfo: data));
    } on UserError {
      update(UserState.notLoggedIn());
    }
  }

  @override
  UserState get initialState => UserState.loading();

  void onUserLoginSuccessful(UserInfo userInfo) {
    _userRepository.saveUserInfo(userInfo);
    update(UserState.loggedIn(userInfo: userInfo));
  }

  void onUserLogout() {
    _userRepository.clearUserInfo();
    update(UserState.notLoggedIn());
  }
}

@freezed
abstract class UserState with _$UserState {
  const factory UserState.loggedIn({UserInfo userInfo}) = UserLoggedIn;
  const factory UserState.loading() = UserLoading;
  const factory UserState.notLoggedIn() = UserNotLoggedIn;
}
