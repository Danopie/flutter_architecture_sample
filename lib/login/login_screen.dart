import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:flutter_architecture_sample/res/color.dart';
import 'package:flutter_architecture_sample/res/string.dart';
import 'package:flutter_architecture_sample/login/login_controller.dart';
import 'package:flutter_architecture_sample/core/router.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:get_it/get_it.dart';

class LoginScreen extends StatefulWidget {
  static Widget newInstance() => StateNotifierProvider<LoginController, LoginState>(
        create: (context) =>
            LoginController(GetIt.I.get<UserRepository>(), context.read<UserBloc>()),
        child: LoginScreen(),
      );

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  var listener;

  @override
  void initState() {
    listener = context.read<LoginController>().stream.listen(_handleNewState);
    super.initState();
  }

  void _handleNewState(LoginState state) {
    state.maybeWhen(
      orElse: () {},
      success: () {
        Future.microtask(() => AppRouter.pop());
      },
    );
  }

  @override
  void dispose() {
    listener?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginState>();
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.of(context).backgroundColor,
        appBar: AppBar(
          leading: Container(),
          title: Text(AppString.of(context).loginText),
        ),
        body: Builder(
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: _usernameTextController,
                    decoration: InputDecoration(
                        hintText: AppString.of(context).usernameHintText),
                  ),
                  Container(
                    height: 12,
                  ),
                  TextField(
                    controller: _passwordTextController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: AppString.of(context).passwordHintText),
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
                      child: Text(AppString.of(context).loginButtonText),
                      onPressed: () {
                        context.read<LoginController>().onUserLogin(
                            _usernameTextController.text,
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
    );
  }
}
