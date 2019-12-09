// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_architecture_sample/data/base/parser.dart';
import 'package:flutter_architecture_sample/data/database/entity.dart';
import 'package:flutter_architecture_sample/data/network/request_status.dart';

class LoginResponse {
  final RequestStatus error;
  final UserInfo data;

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
        data: json["data"] == null ? null : UserInfo.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error == null ? null : error.toJson(),
        "data": data == null ? null : data.toJson(),
      };
}

class UserInfo extends Entity {
  final String token;
  final String name;

  UserInfo({
    int id,
    this.token,
    this.name,
  }) : super(id: id);

  factory UserInfo.fromRawJson(String str) =>
      UserInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        id: json["id"] == null ? null : parseInt(json["id"]),
        token: json["token"] == null ? null : parseString(json["token"]),
        name: json["name"] == null ? null : parseString(json["name"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "name": name == null ? null : name,
        "id": id == null ? null : id,
      };
}
