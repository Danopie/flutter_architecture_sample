import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/data/user/user_api.dart';
import 'package:flutter_architecture_sample/data/user/user_db.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:flutter_architecture_sample/main.iconfig.dart';
import 'package:flutter_architecture_sample/res/color.dart';
import 'package:flutter_architecture_sample/res/string.dart';
import 'package:flutter_architecture_sample/ui/deeplink/deep_link_bloc.dart';
import 'package:flutter_architecture_sample/ui/router.dart';
import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  configure();
  runApp(MyApp());
}

@injectableInit
void configure() => $initGetIt(GetIt.instance);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      builder: (context) => [
        BlocProvider<DeepLinkBloc>(
          builder: (context) => DeepLinkBloc(),
        ),
        BlocProvider<UserBloc>(
          builder: (context) => UserBloc(GetIt.I.get<UserRepository>()),
        ),
      ],
      child: AssetString(
        child: AssetColor(
          child: MaterialApp(
            navigatorKey: Router.navigatorKey,
            onGenerateRoute: Router.generateRoute,
            initialRoute: Router.initialRoute,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

