import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/core/config/app_config.dart';
import 'package:flutter_architecture_sample/res/color.dart';
import 'package:flutter_architecture_sample/res/string.dart';
import 'package:flutter_architecture_sample/home/home_bloc.dart';
import 'package:flutter_architecture_sample/core/router.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
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
          AppRouter.push(ScreenNames.Login);
        }
      },
      child: BlocWidgetBuilder<HomeBloc, HomeState>(
        builder: (context, bloc, state) {
          final title = state.maybeWhen<String>(
              orElse: () => "${AssetString.of(context).welcomeText}",
              doneLoading: (username) =>
                  "${AssetString.of(context).welcomeText} ${username}");

          final userLoggedIn = state is HomeDoneLoading;

          return Scaffold(
            backgroundColor: AssetColor.of(context).backgroundColor,
            appBar: AppBar(
              title: Text(title),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    child: Text("${AssetString.of(context).changeThemeButton}"),
                    onPressed: () {
                      final settings = AssetColor.settingsOf(context);
                      settings.changeTheme(settings.theme == AppTheme.Light
                          ? AppTheme.Dark
                          : AppTheme.Light);
                    },
                  ),
                  RaisedButton(
                    child:
                        Text("${AssetString.of(context).changeLanguageButton}"),
                    onPressed: () {
                      final settings = AssetString.settingsOf(context);
                      settings.changeTheme(
                          settings.language == AppLanguage.Vietnamese
                              ? AppLanguage.English
                              : AppLanguage.Vietnamese);
                    },
                  ),
                  if (userLoggedIn)
                    RaisedButton(
                      child: Text("${AssetString.of(context).logoutButton}"),
                      onPressed: () {
                        bloc.onUserLogout();
                      },
                    ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      "${AppConfig.instance.flavor}",
                      textAlign: TextAlign.center,
                    ),
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
