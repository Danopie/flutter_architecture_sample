import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';
import 'package:lightweight_result/lightweight_result.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginState> {
  final UserRepository _userRepository;
  final UserBloc _userBloc;

  LoginBloc(this._userRepository, this._userBloc);

  @override
  void init() {}

  Future onUserLogin(String username, String password) async {
    update(LoginState.loading());
    final result = await _userRepository.login(username, password);

    result.fold((data) {
      _userBloc.onUserLoginSuccessful(data);
      update(LoginState.success());
    }, (error) {
      update(LoginState.idle(error: _getLoginErrorMessage(error)));
    });
  }

  @override
  LoginState get initialState => LoginState.idle();

  _getLoginErrorMessage(UserError error) {
    if (error == UserError.LoginFailed) {
      return 'Login Failed';
    }
  }
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.idle({String error}) = LoginIdle;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success() = LoginSuccessful;
}
