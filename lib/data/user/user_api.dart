import 'package:flutter_architecture_sample/data/base/exception.dart';
import 'package:flutter_architecture_sample/data/network/api_path.dart';
import 'package:flutter_architecture_sample/data/network/api_provider.dart';
import 'package:flutter_architecture_sample/data/user/login_response.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserApiProvider extends ApiProvider {
  UserApiProvider() : super(EndPoint.MAIN);

  Future<UserInfo> login(String username, String password) async {
//    final res = await post(ApiPath.LOGIN);
    await Future.delayed(Duration(milliseconds: 200));
    String res;
    if (username == "admin" && password == "admin") {
      res = loginSuccessJson;
    } else {
      res = loginFailedJson;
    }

    final loginRes = LoginResponse.fromRawJson(res);
    if (loginRes.error.isSuccessful) {
      return loginRes.data;
    } else {
      throw ServerException(loginRes.error.message);
    }
  }
}

String loginFailedJson = '''
{
  "error": {
    "status": 0,
    "message": "Incorrect password"
  }
}
''';

String loginSuccessJson = '''
{
  "error": {
    "status": 1,
    "message": "Successful"
  },
  "data": {
    "token": "sfawefwefaf",
    "name": "Dan Le"
  }
}
''';
