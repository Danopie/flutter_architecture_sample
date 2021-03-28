import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_architecture_sample/core/config/app_config.dart';
import 'package:flutter_architecture_sample/core/config/environment_config.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:flutter_architecture_sample/main.iconfig.dart';
import 'package:flutter_architecture_sample/res/color.dart';
import 'package:flutter_architecture_sample/res/string.dart';
import 'package:flutter_architecture_sample/deeplink/deep_link_bloc.dart';
import 'package:flutter_architecture_sample/core/router.dart';
import 'package:flutter_architecture_sample/user/user_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

void main() {
  initApp();
}

Future initApp() async {
  configure();
  WidgetsFlutterBinding.ensureInitialized();
  await initAppConfig();
  runApp(MyApp());
}

Future initAppConfig() async {
  try {
    final json = await rootBundle.loadString(
        'asset/${_getConfigFileName(EnvironmentConfig.flavor)}.json');
    AppConfig.instance =
        AppConfig.fromJson(jsonDecode(json), EnvironmentConfig.flavor);
  } catch (e) {
    print('initAppConfig: ${e.toString()}');
  }
}

String _getConfigFileName(Flavor flavor) {
  switch (flavor) {
    case Flavor.Development:
      return "config_dev";
    case Flavor.Production:
    default:
      return "config_prod";
  }
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
      child: AppString(
        child: AppColor(
          child: MaterialApp(
            navigatorKey: AppRouter.navigatorKey,
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: AppRouter.initialRoute,
            debugShowCheckedModeBanner: false,
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
