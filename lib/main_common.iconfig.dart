// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_architecture_sample/data/user/user_api.dart';
import 'package:flutter_architecture_sample/data/user/user_db.dart';
import 'package:flutter_architecture_sample/data/user/user_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<UserApiProvider>(() => UserApiProvider());
  g.registerFactory<UserDatabaseProvider>(() => UserDatabaseProvider());
  g.registerFactory<UserRepository>(
      () => UserRepository(g<UserApiProvider>(), g<UserDatabaseProvider>()));
}
