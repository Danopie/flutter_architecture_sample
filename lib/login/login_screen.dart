import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:flutter_architecture_sample/res/color.dart';
import 'package:flutter_architecture_sample/res/string.dart';
import 'package:flutter_architecture_sample/login/login_bloc.dart';
import 'package:flutter_architecture_sample/core/router.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

class LoginScreen extends StatefulWidget {
  static Widget newInstance() => BlocProvider<LoginBloc>(
        builder: (context) => LoginBloc(
            GetIt.I.get<UserRepository>(), BlocProvider.of<UserBloc>(context)),
        child: LoginScreen(),
      );

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AssetColor.of(context).backgroundColor,
        appBar: AppBar(
          leading: Container(),
          title: Text(AssetString.of(context).loginText),
        ),
        body: BlocListener<LoginBloc, LoginState>(
          listener: (_, bloc, state) {
            state.maybeWhen(orElse: (){}, success: (){
              Router.pop();
            });
          },
          child: BlocWidgetBuilder<LoginBloc, LoginState>(
            builder: (_, bloc, state) {
              return Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _usernameTextController,
                      decoration: InputDecoration(hintText: AssetString.of(context).usernameHintText),
                    ),
                    Container(
                      height: 12,
                    ),
                    TextField(
                      controller: _passwordTextController,
                      obscureText: true,
                      decoration: InputDecoration(hintText: AssetString.of(context).passwordHintText),
                    ),
                    Container(
                      height: 12,
                    ),
                    if (state is LoginIdle &&
                        state.error != null &&
                        state.error.isNotEmpty) ...[
                      Container(
                        height: 12,
                      ),
                      Text(
                        state.error,
                        style: TextStyle(color: Colors.red),
                      ),
                      Container(
                        height: 12,
                      ),
                    ],
                    if (state is LoginIdle)
                      RaisedButton(
                        child: Text(AssetString.of(context).loginButtonText),
                        onPressed: () {
                          bloc.onUserLogin(_usernameTextController.text,
                              _passwordTextController.text);
                        },
                      )
                    else
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator())
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
