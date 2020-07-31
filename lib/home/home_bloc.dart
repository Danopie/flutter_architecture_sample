import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeState> {
  final UserBloc _userBloc;

  HomeBloc(this._userBloc);

  @override
  void init() {
    _userBloc.listen((userState) {
      userState.when(
          loggedIn: (userInfo) {
            update((HomeState.doneLoading(username: userInfo.name)));
          },
          loading: () {},
          notLoggedIn: () {
            update(HomeState.needLogin());
          });
    });
  }

  @override
  HomeState get initialState => HomeState.loading();

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
