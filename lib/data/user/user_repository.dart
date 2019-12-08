import 'package:flutter_architecture_sample/data/base/repository.dart';
import 'package:flutter_architecture_sample/data/base/result.dart';
import 'package:flutter_architecture_sample/data/user/user_api.dart';
import 'package:flutter_architecture_sample/data/user/user_dao.dart';
import 'package:flutter_architecture_sample/data/user/user_info.dart';

class UserRepository extends Repository {
  final UserApiProvider _userApiService;
  final UserDatabaseProvider _userDao;

  UserRepository(this._userApiService, this._userDao);

  Future<Result<UserInfo>> getUserInfo() async {
    final userInfo = await _userDao.getUserInfo();
    return Result<UserInfo>.success(userInfo);
  }

  Future<void> clearUserInfo() async {
    await _userDao.clearUserInfo();
  }

  Future<Result<UserInfo>> login(String username, String password) async {
    try {
      final userInfo = await _userApiService.login(username, password);
      return Result<UserInfo>.success(userInfo);
    } on Exception catch (e) {
      return Result<UserInfo>.failure(e.toString(), e);
    }
  }

  Future<void> saveUserInfo(UserInfo userInfo) async {
    await _userDao.saveUserInfo(userInfo);
  }

  @override
  void dispose() {}
}
