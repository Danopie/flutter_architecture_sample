import 'package:flutter_architecture_sample/data/base/mapper.dart';
import 'package:flutter_architecture_sample/data/base/parser.dart';
import 'package:flutter_architecture_sample/data/user/login_response.dart';

class UserInfo {
  final String token;
  final String username;

  UserInfo(this.token, this.username);
}

class UserInfoMapper extends Mapper<UserInfoDTO, UserInfo> {
  @override
  UserInfo map(UserInfoDTO data) {
    return UserInfo(parseString(data.token), parseString(data.name));
  }
}
