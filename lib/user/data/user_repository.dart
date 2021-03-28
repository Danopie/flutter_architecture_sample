import 'package:flutter_architecture_sample/core/base/repository.dart';
import 'package:flutter_architecture_sample/user/data/login_response.dart';
import 'package:flutter_architecture_sample/user/data/user_api.dart';
import 'package:flutter_architecture_sample/user/data/user_db.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserRepository extends Repository {
  final UserApiProvider _userApiService;
  final UserDatabaseProvider _userDao;

  UserRepository(this._userApiService, this._userDao);

  Future<UserInfo> getUserInfo() async {
    final userInfo = await _userDao.getUserInfo();
    if (userInfo != null) {
      return userInfo;
    } else {
      throw UserError.UserInfoIsEmpty;
    }
  }

  Future<void> clearUserInfo() async {
    await _userDao.clearUserInfo();
  }

  Future<UserInfo> login(String username, String password) async {
    try {
      final userInfo = await _userApiService.login(username, password);
      return userInfo;
    } on Exception catch (e) {
      throw UserError.LoginFailed;
    }
  }

  Future<void> saveUserInfo(UserInfo userInfo) async {
    await _userDao.saveUserInfo(userInfo);
  }

  @override
  void dispose() {}
}

enum UserError { UserInfoIsEmpty, LoginFailed }
