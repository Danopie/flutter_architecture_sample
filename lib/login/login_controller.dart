import 'package:flutter_architecture_sample/core/router.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'login_controller.freezed.dart';

class LoginController extends StateNotifier<LoginState> {
  final UserRepository _userRepository;
  final UserBloc _userBloc;

  LoginController(this._userRepository, this._userBloc):super(LoginState.idle());

  Future onUserLogin(String username, String password) async {
    state = LoginState.loading();
    try {
      final data = await (_userRepository.login(username, password));
      _userBloc.onUserLoginSuccessful(data);
      state = LoginState.success();
      AppRouter.pop();
    } on UserError catch (error) {
      state = LoginState.idle(error: _getLoginErrorMessage(error));
    }
  }

  _getLoginErrorMessage(UserError error) {
    if (error == UserError.LoginFailed) {
      return 'Login Failed';
    }
  }
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.idle({String? error}) = LoginIdle;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success() = LoginSuccessful;
}
