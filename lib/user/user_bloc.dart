import 'package:flutter_architecture_sample/user/data/login_response.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends StateNotifier<UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserState.loading()) {
    init();
  }

  Future<void> init() async {
    try {
      final data = await _userRepository.getUserInfo();
      state = UserState.loggedIn(userInfo: data);
    } on UserError {
      state = UserState.notLoggedIn();
    }
  }

  void onUserLoginSuccessful(UserInfo userInfo) {
    _userRepository.saveUserInfo(userInfo);
    state = UserState.loggedIn(userInfo: userInfo);
  }

  void onUserLogout() {
    _userRepository.clearUserInfo();
    state = UserState.notLoggedIn();
  }
}

@freezed
abstract class UserState with _$UserState {
  const factory UserState.loggedIn({required UserInfo userInfo}) = UserLoggedIn;
  const factory UserState.loading() = UserLoading;
  const factory UserState.notLoggedIn() = UserNotLoggedIn;
}
