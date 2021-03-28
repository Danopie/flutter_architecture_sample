import 'package:flutter_architecture_sample/user/data/login_response.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
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

  test("UserBloc_Should be in Loading_Before init", () {
    expectLater(
        sut,
        emitsInOrder([
          predicate<UserState>((state) => state is UserLoading, "Loading user"),
          emitsDone
        ]));
    sut.dispose();
  });

  test("UserBloc_Should emits login successful_When it has cached user info",
      () async {
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.value(userInfo));

    expectLater(
        sut,
        emitsInOrder([
          predicate<UserState>((state) => state is UserLoading, "Loading user"),
          predicate<UserState>(
              (state) => state is UserLoggedIn && state.userInfo == userInfo,
              "Loading user"),
          emitsDone
        ]));

    await sut.init();
    sut.dispose();
  });

  test("UserBloc_Should emits not logged in_When cached info is empty",
      () async {
    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.error(UserError.UserInfoIsEmpty));

    expectLater(
        sut,
        emitsInOrder([
          predicate<UserState>((state) => state is UserLoading, "Loading user"),
          predicate<UserState>(
              (state) => state is UserNotLoggedIn, "Loading user"),
        ]));

    sut.init();
  });

  test("UserBloc_Should emits not logged in_When logout while having user info",
      () async {
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.value(userInfo));

    expectLater(
        sut,
        emitsInOrder([
          predicate<UserState>((state) => state is UserLoading, "Loading user"),
          predicate<UserState>(
              (state) => state is UserLoggedIn && state.userInfo == userInfo,
              "User is logged in"),
          predicate<UserState>((state) => state is UserNotLoggedIn,
              "User is not logged in and doesn't have user info"),
        ]));

    await sut.init();
    await sut.onUserLogout();
    sut.dispose();

    verify(userRepository.clearUserInfo()).called(1);
  });

  test("UserBloc_Should emits LoginSuccesful_When user login successful",
      () async {
    final userInfo = UserInfo(name: "dan le", token: "dfasfads");

    when(userRepository.getUserInfo())
        .thenAnswer((_) => Future.value(userInfo));

    expectLater(
        sut,
        emitsInOrder([
          predicate<UserState>((state) => state is UserLoading, "Loading user"),
          predicate<UserState>(
              (state) => state is UserNotLoggedIn, "User is not logged in"),
          predicate<UserState>(
              (state) => state is UserLoggedIn && state.userInfo == userInfo,
              "User is logged in and have user info"),
        ]));

    await sut.init();
    await sut.onUserLoginSuccessful(userInfo);
    sut.dispose();

    verify(userRepository.saveUserInfo(userInfo)).called(1);
  });
}
