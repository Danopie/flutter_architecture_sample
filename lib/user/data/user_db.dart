import 'package:flutter_architecture_sample/core/database/database_provider.dart';
import 'package:flutter_architecture_sample/user/data/login_response.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserDatabaseProvider extends DatabaseProvider {
  @override
  String get createTableScript => '''
        create table $tableName ( 
          id integer primary key autoincrement, 
          name text not null,
          token integer not null)
  ''';

  @override
  String get tableName => (UserInfo).toString();

  Future<void> saveUserInfo(UserInfo userInfo) async {
    await insert(userInfo.toJson());
  }

  Future<UserInfo> getUserInfo() async {
    final maps = await getAll();

    return maps != null && maps.isNotEmpty
        ? UserInfo.fromJson(maps.first)
        : null;
  }

  Future<void> clearUserInfo() async {
    await removeAll();
  }
}
