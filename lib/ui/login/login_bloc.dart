import 'package:flutter_architecture_sample/data/base/result.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';
part '../../generated/login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginState> {
  final UserRepository _userRepository;
  final UserBloc _userBloc;

  LoginBloc(this._userRepository, this._userBloc);

  @override
  void init() {}

  Future onUserLogin(String username, String password) async {
    update(LoginState.loading());
    final result = await _userRepository.login(username, password);

    result.when(success: (data) {
      _userBloc.onUserLoginSuccessful(data);
      update(LoginState.success());
    }, failure: (msg, exception) {
      update(LoginState.idle(error: msg));
    });
  }

  @override
  LoginState get initialState => LoginState.idle();
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.idle({String error}) = LoginIdle;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success() = LoginSuccessful;
}

