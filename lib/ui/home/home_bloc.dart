import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

class HomeBloc extends Bloc<HomeState> {
  final UserBloc _userBloc;

  HomeBloc(this._userBloc);

  @override
  void init() {
    _userBloc.stateStream.listen((userState) {
      if (userState.id == UserStateId.NotLoggedIn) {
        update(latestState.copyWith(id: HomeStateId.NeedLogin));
      } else if (userState.id == UserStateId.LoggedIn) {
        update(latestState.copyWith(
            id: HomeStateId.DoneLoading, username: userState.userInfo.name));
      }
    });
  }

  @override
  HomeState get initialState => HomeState(id: HomeStateId.Loading);

  void onUserLogout() {
    _userBloc.onUserLogout();
  }
}

class HomeState {
  final HomeStateId id;
  final String username;

  const HomeState({
    this.id,
    this.username,
  });

  HomeState copyWith({
    HomeStateId id,
    String username,
  }) {
    return HomeState(
      id: id ?? this.id,
      username: username ?? this.username,
    );
  }
}

enum HomeStateId { Loading, DoneLoading, NeedLogin }
