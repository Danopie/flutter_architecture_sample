import 'package:flutter_architecture_sample/data/database/database_provider.dart';
import 'package:flutter_architecture_sample/data/user/login_response.dart';
import 'package:sqflite/sqflite.dart';

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
    final db = await getDatabase();
    db.insert(tableName, userInfo.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<UserInfo> getUserInfo() async {
    final db = await getDatabase();

    final List<Map<String, dynamic>> maps = await db.query(tableName);

    return maps.isNotEmpty ? UserInfo.fromJson(maps.first) : null;
  }

  Future<void> clearUserInfo() async {
    final db = await getDatabase();
    db.delete(tableName);
  }
}
