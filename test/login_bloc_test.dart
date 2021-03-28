import 'package:flutter_architecture_sample/user/data/login_response.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:flutter_architecture_sample/login/login_controller.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockUserBloc extends Mock implements UserBloc {}

void main() {
  UserRepository userRepository;
  UserBloc userBloc;
  LoginController sut;

  setUp(() {
    userRepository = MockUserRepository();
    userBloc = MockUserBloc();
    sut = LoginController(userRepository, userBloc);
  });

  tearDown(() {
    userRepository.dispose();
    userBloc.dispose();
    sut.dispose();
  });

  test("LoginBloc_Should be idle on init", () {
    expect(
        sut,
        emitsInOrder([
          predicate<LoginState>((state) => state is LoginIdle),
        ]));
  });

  test(
      "LoginBloc_Should emits login successful_When user login with correct user name and password",
      () async {
    final username = "danle257";
    final password = "123456";
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.login(username, password))
        .thenAnswer((_) => Future.value(userInfo));

    expectLater(
        sut,
        emitsInOrder([
          predicate<LoginState>((state) => state is LoginIdle, "In idle"),
          predicate<LoginState>((state) => state is LoginLoading, "Logging in"),
          predicate<LoginState>(
              (state) => state is LoginSuccessful, "Login sucessful"),
        ]));

    await sut.onUserLogin(username, password);

    verify(userBloc.onUserLoginSuccessful(userInfo)).called(1);
  }, timeout: Timeout(Duration(seconds: 5)));

  test("LoginBloc_Should show emits error and reset to idle_When login failed",
      () async {
    final error = "Login failed";

    when(userRepository.login(any, any))
        .thenAnswer((_) => Future.error(UserError.LoginFailed));

    expectLater(
        sut,
        emitsInOrder([
          predicate<LoginState>((state) => state is LoginIdle, "In idle"),
          predicate<LoginState>((state) => state is LoginLoading, "Logging in"),
          predicate<LoginState>(
              (state) => state is LoginIdle && state.error == error,
              "Login failed"),
        ]));

    await sut.onUserLogin("", "");

    verifyNever(userBloc.onUserLoginSuccessful(any));
  }, timeout: Timeout(Duration(seconds: 5)));
}
