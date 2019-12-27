import 'package:flutter_architecture_sample/data/base/result.dart';
import 'package:flutter_architecture_sample/data/user/login_response.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:flutter_architecture_sample/ui/login/login_bloc.dart';
import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockUserBloc extends Mock implements UserBloc {}

void main() {
  UserRepository userRepository;
  UserBloc userBloc;
  LoginBloc sut;

  setUp(() {
    userRepository = MockUserRepository();
    userBloc = MockUserBloc();
    sut = LoginBloc(userRepository, userBloc);
  });

  tearDown(() {
    userRepository.dispose();
    userBloc.dispose();
    sut.dispose();
  });

  test("LoginBloc initial state is idle", () {
    sut.init();
    expect(
        sut.stateStream,
        emitsInOrder([
          predicate<LoginState>((state) => state.id == LoginStateId.Idle),
        ]));
  });

  test("LoginBloc can login", () async {
    final username = "danle257";
    final password = "123456";
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.login(username, password))
        .thenAnswer((_) => Future.value(Result.success(userInfo)));

    expectLater(
        sut.stateStream,
        emitsInOrder([
          predicate<LoginState>(
              (state) => state.id == LoginStateId.Idle, "In idle"),
          predicate<LoginState>(
              (state) => state.id == LoginStateId.Loading, "Logging in"),
          predicate<LoginState>(
              (state) => state.id == LoginStateId.LoginSuccessful,
              "Login sucessful"),
        ]));

    await sut.init();
    await sut.onUserLogin(username, password);

    verify(userBloc.onUserLoginSuccessful(userInfo)).called(1);
  }, timeout: Timeout(Duration(seconds: 5)));

  test("LoginBloc show error on login failed", () async {
    final error = "Error";

    when(userRepository.login(any, any))
        .thenAnswer((_) => Future.value(Result.failure(error)));

    expectLater(
        sut.stateStream,
        emitsInOrder([
          predicate<LoginState>(
              (state) => state.id == LoginStateId.Idle, "In idle"),
          predicate<LoginState>(
              (state) => state.id == LoginStateId.Loading, "Logging in"),
          predicate<LoginState>(
              (state) => state.id == LoginStateId.Idle && state.error == error,
              "Login failed"),
        ]));

    await sut.init();
    await sut.onUserLogin("", "");

    verifyNever(userBloc.onUserLoginSuccessful(any));
  }, timeout: Timeout(Duration(seconds: 5)));
}
