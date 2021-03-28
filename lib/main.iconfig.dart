// GENERATED CODE - DO NOT MODIFY BY HAND

// @dart=2.9

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_architecture_sample/user/data/user_api.dart';
import 'package:flutter_architecture_sample/user/data/user_db.dart';
import 'package:flutter_architecture_sample/user/data/user_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<UserApiProvider>(() => UserApiProvider());
  g.registerFactory<UserDatabaseProvider>(() => UserDatabaseProvider());
  g.registerFactory<UserRepository>(
      () => UserRepository(g<UserApiProvider>(), g<UserDatabaseProvider>()));
}
