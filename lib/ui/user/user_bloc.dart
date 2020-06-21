import 'package:flutter_architecture_sample/data/user/login_response.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';
import 'package:lightweight_result/lightweight_result.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository);

  @override
  void init() async {
    final result = await _userRepository.getUserInfo();

    result.fold((data) {
      update(UserState.loggedIn(userInfo: data));
    }, (error) {
      update(UserState.notLoggedIn());
    });
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
