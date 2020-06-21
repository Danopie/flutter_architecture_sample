import 'package:flutter_architecture_sample/data/base/repository.dart';
import 'package:flutter_architecture_sample/data/user/login_response.dart';
import 'package:flutter_architecture_sample/data/user/user_api.dart';
import 'package:flutter_architecture_sample/data/user/user_db.dart';
import 'package:injectable/injectable.dart';
import 'package:lightweight_result/lightweight_result.dart';

@injectable
class UserRepository extends Repository {
  final UserApiProvider _userApiService;
  final UserDatabaseProvider _userDao;

  UserRepository(this._userApiService, this._userDao);

  Future<Result<UserInfo, UserError>> getUserInfo() async {
    final userInfo = await _userDao.getUserInfo();
    if (userInfo != null) {
      return Result.ok(userInfo);
    } else {
      return Result.err(UserError.UserInfoIsEmpty);
    }
  }

  Future<void> clearUserInfo() async {
    await _userDao.clearUserInfo();
  }

  Future<Result<UserInfo, UserError>> login(
      String username, String password) async {
    try {
      final userInfo = await _userApiService.login(username, password);
      return Result<UserInfo, UserError>.ok(userInfo);
    } on Exception catch (e) {
      return Result<UserInfo, UserError>.err(UserError.LoginFailed);
    }
  }

  Future<void> saveUserInfo(UserInfo userInfo) async {
    await _userDao.saveUserInfo(userInfo);
  }

  @override
  void dispose() {}
}

enum UserError { UserInfoIsEmpty, LoginFailed }
