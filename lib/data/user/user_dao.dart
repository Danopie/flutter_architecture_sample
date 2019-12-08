import 'package:flutter_architecture_sample/data/database/database_provider.dart';
import 'package:flutter_architecture_sample/data/user/user_info.dart';

class UserDatabaseProvider extends DatabaseProvider {
  UserInfo _userInfo;

  Future<void> saveUserInfo(UserInfo userInfo) async {
    _userInfo = userInfo;
  }

  Future<UserInfo> getUserInfo() async {
    return _userInfo;
  }

  Future<void> clearUserInfo() async {
    _userInfo = null;
  }
}
