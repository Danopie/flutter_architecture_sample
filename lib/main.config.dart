// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'user/data/user_api.dart' as _i3;
import 'user/data/user_db.dart' as _i4;
import 'user/data/user_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.UserApiProvider>(() => _i3.UserApiProvider());
  gh.factory<_i4.UserDatabaseProvider>(() => _i4.UserDatabaseProvider());
  gh.factory<_i5.UserRepository>(() => _i5.UserRepository(
      get<_i3.UserApiProvider>(), get<_i4.UserDatabaseProvider>()));
  return get;
}
