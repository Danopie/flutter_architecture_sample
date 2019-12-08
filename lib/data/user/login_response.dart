// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_architecture_sample/data/network/request_status.dart';

class LoginResponse {
  final RequestStatus error;
  final UserInfoDTO data;

  LoginResponse({
    this.error,
    this.data,
  });

  factory LoginResponse.fromRawJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        error: json["error"] == null
            ? null
            : RequestStatus.fromJson(json["error"]),
        data: json["data"] == null ? null : UserInfoDTO.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error == null ? null : error.toJson(),
        "data": data == null ? null : data.toJson(),
      };
}

class UserInfoDTO {
  final dynamic token;
  final dynamic name;

  UserInfoDTO({
    this.token,
    this.name,
  });

  factory UserInfoDTO.fromRawJson(String str) =>
      UserInfoDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserInfoDTO.fromJson(Map<String, dynamic> json) => UserInfoDTO(
        token: json["token"] == null ? null : json["token"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "name": name == null ? null : name,
      };
}
