import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/data/user/user_api.dart';
import 'package:flutter_architecture_sample/data/user/user_dao.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:flutter_architecture_sample/ui/router.dart';
import 'package:flutter_architecture_sample/ui/user/user_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';

void main() {
  setupDI();
  runApp(MyApp());
}

void setupDI() {
  GetIt.instance.registerLazySingleton(() => UserApiProvider());
  GetIt.instance.registerLazySingleton(() => UserDatabaseProvider());
  GetIt.instance.registerLazySingleton(() => UserRepository(
      GetIt.I.get<UserApiProvider>(), GetIt.I.get<UserDatabaseProvider>()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      builder: (context) => UserBloc(GetIt.I.get<UserRepository>()),
      child: MaterialApp(
        navigatorKey: Router.navigatorKey,
        onGenerateRoute: Router.generateRoute,
        initialRoute: Router.initialRoute,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
