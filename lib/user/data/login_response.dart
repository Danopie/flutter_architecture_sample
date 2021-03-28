// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_architecture_sample/core/network/request_status.dart';
import 'package:primitive_type_parser/primitive_type_parser.dart';

class LoginResponse {
  final RequestStatus? error;
  final UserInfo? data;

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
        "error": error == null ? null : error!.toJson(),
        "data": data == null ? null : data!.toJson(),
      };
}

class UserInfo {
  final String? token;
  final String? name;
  final List<String>? genders;

  UserInfo({
    this.token,
    this.name,
    this.genders,
  });

  factory UserInfo.fromRawJson(String str) =>
      UserInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        token: json["token"] == null ? null : parseString(json["token"]),
        name: json["name"] == null ? null : parseString(json["name"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "name": name == null ? null : name,
      };

  Map<String, dynamic> toMap() {
    return {
      'token': this.token,
      'name': this.name,
      'genders': this.genders,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      token: map['token'] as String?,
      name: map['name'] as String?,
      genders: map['genders'] as List<String>?,
    );
  }
}
