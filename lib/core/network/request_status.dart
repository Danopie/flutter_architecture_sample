import 'dart:convert';

class RequestStatus {
  final int? status;
  final String? message;

  RequestStatus({
    this.status,
    this.message,
  });

  factory RequestStatus.fromRawJson(String str) =>
      RequestStatus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RequestStatus.fromJson(Map<String, dynamic> json) => RequestStatus(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "message": message == null ? null : message,
      };

  bool get isSuccessful => status == 1;
}
