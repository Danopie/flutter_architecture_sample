import 'package:flutter_architecture_sample/data/base/result.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

class LoginBloc extends Bloc<LoginState> {
  final UserRepository _userRepository;
  final UserBloc _userBloc;

  LoginBloc(this._userRepository, this._userBloc);

  @override
  void init() {}

  Future onUserLogin(String username, String password) async {
    update(latestState.copyWith(id: LoginStateId.Loading));
    final result = await _userRepository.login(username, password);

    result.when(success: (data) {
      _userBloc.onUserLoginSuccessful(data);
      update(latestState.copyWith(id: LoginStateId.LoginSuccessful));
    }, failure: (msg, exception) {
      update(latestState.copyWith(id: LoginStateId.Idle, error: msg));
    });
  }

  @override
  LoginState get initialState => LoginState(id: LoginStateId.Idle);
}

class LoginState {
  final LoginStateId id;
  final String error;

  const LoginState({
    this.id,
    this.error,
  });

  LoginState copyWith({
    LoginStateId id,
    String error,
  }) {
    return LoginState(
      id: id ?? this.id,
      error: error ?? this.error,
    );
  }

  @override
  String toString() {
    return 'LoginState{id: $id, error: $error}';
  }
}

enum LoginStateId { Idle, Loading, LoginSuccessful }
