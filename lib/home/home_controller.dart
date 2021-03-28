import 'package:flutter_architecture_sample/core/router.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_controller.freezed.dart';

class HomeController extends StateNotifier<HomeState> {
  final UserBloc _userBloc;

  HomeController(this._userBloc) : super(HomeState.loading()) {
    init();
  }

  void init() {
    _userBloc.addListener((userState) {
      userState.when(
          loggedIn: (userInfo) {
            state = HomeState.doneLoading(username: userInfo.name);
          },
          loading: () {},
          notLoggedIn: () {
            state = HomeState.needLogin();
            AppRouter.push(ScreenNames.Login);
          });
    });
  }

  void onUserLogout() {
    _userBloc.onUserLogout();
  }
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.doneLoading({String username}) = HomeDoneLoading;
  const factory HomeState.needLogin() = HomeNeedLogin;
}
