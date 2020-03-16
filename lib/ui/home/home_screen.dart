import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/ui/home/home_bloc.dart';
import 'package:flutter_architecture_sample/ui/router.dart';
import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

  static Widget newInstance() => BlocProvider(
        builder: (context) => HomeBloc(BlocProvider.of<UserBloc>(context)),
        child: HomeScreen(),
      );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (_, __, state) {
        if (state is HomeNeedLogin) {
          Router.push(ScreenNames.Login);
        }
      },
      child: BlocWidgetBuilder<HomeBloc, HomeState>(
        builder: (context, bloc, state) {
          final title = state.maybeWhen<String>(
              orElse: () => "Home",
              doneLoading: (username) => "Welcome ${username}");

          final userLoggedIn = state is HomeDoneLoading;

          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  if (userLoggedIn)
                    RaisedButton(
                      child: Text("Logout"),
                      onPressed: () {
                        bloc.onUserLogout();
                      },
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
