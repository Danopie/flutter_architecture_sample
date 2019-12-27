import 'package:flutter_architecture_sample/data/base/result.dart';
import 'package:flutter_architecture_sample/data/user/login_response.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  UserRepository userRepository;
  UserBloc sut;

  setUp(() {
    userRepository = MockUserRepository();
    sut = UserBloc(userRepository);
  });

  tearDown(() {
    userRepository.dispose();
    sut.dispose();
  });

  test("UserBloc initial state is loading", () {
    expectLater(
        sut.stateStream,
        emitsInOrder([
          predicate<UserState>(
              (state) => state.id == UserStateId.Loading, "Loading user"),
          emitsDone
        ]));
    sut.dispose();
  });

  test("User can login from cached info", () async {
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.value(Result.success(userInfo)));

    expectLater(
        sut.stateStream,
        emitsInOrder([
          predicate<UserState>(
              (state) => state.id == UserStateId.Loading, "Loading user"),
          predicate<UserState>(
              (state) =>
                  state.id == UserStateId.LoggedIn &&
                  state.userInfo == userInfo,
              "Loading user"),
          emitsDone
        ]));

    await sut.init();
    sut.dispose();
  });

  test("Initial user state is anonymous without cached info", () async {
    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.value(Result.failure()));

    expectLater(
        sut.stateStream,
        emitsInOrder([
          predicate<UserState>(
              (state) => state.id == UserStateId.Loading, "Loading user"),
          predicate<UserState>(
              (state) =>
                  state.id == UserStateId.NotLoggedIn && state.userInfo == null,
              "Loading user"),
        ]));

    sut.init();
  });

  test("User can logout", () async {
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.value(Result.success(userInfo)));

    expectLater(
        sut.stateStream,
        emitsInOrder([
          predicate<UserState>(
              (state) => state.id == UserStateId.Loading, "Loading user"),
          predicate<UserState>(
              (state) =>
                  state.id == UserStateId.LoggedIn &&
                  state.userInfo == userInfo,
              "User is logged in"),
          predicate<UserState>(
              (state) =>
                  state.id == UserStateId.NotLoggedIn && state.userInfo == null,
              "User is not logged in and doesn't have user info"),
        ]));

    await sut.init();
    await sut.onUserLogout();
    sut.dispose();

    verify(userRepository.clearUserInfo()).called(1);
  });

  test("UserBloc can save user info on login successful", () async {
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.value(Result.success(null)));

    expectLater(
        sut.stateStream,
        emitsInOrder([
          predicate<UserState>(
              (state) => state.id == UserStateId.Loading, "Loading user"),
          predicate<UserState>(
              (state) =>
                  state.id == UserStateId.NotLoggedIn && state.userInfo == null,
              "User is not logged in"),
          predicate<UserState>(
              (state) =>
                  state.id == UserStateId.LoggedIn &&
                  state.userInfo == userInfo,
              "User is logged in and have user info"),
        ]));

    await sut.init();
    await sut.onUserLoginSuccessful(userInfo);
    sut.dispose();

    verify(userRepository.saveUserInfo(userInfo)).called(1);
  });
}
