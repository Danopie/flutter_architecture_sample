import 'package:dio/dio.dart';
import 'package:flutter_architecture_sample/core/base/exception.dart';
import 'package:meta/meta.dart';

abstract class ApiProvider {
  Dio _client = Dio();

  ApiProvider(String url) {
    _client.options.baseUrl = url;
    _client.options.connectTimeout = 5000;
    _client.options.receiveTimeout = 3000;
  }

  @protected
  Future<T> get<T>(String path, [Map<String, String> params]) async {
    try {
      final response = await _client.get(path, queryParameters: params);
      return response?.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  @protected
  Future<T> post<T>(String path, [Map<String, dynamic> params]) async {
    try {
      final response = await _client.post(path, data: params);
      return response?.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  void _handleError(DioError e) {
    if (e.type == DioErrorType.CONNECT_TIMEOUT ||
        e.type == DioErrorType.SEND_TIMEOUT ||
        e.type == DioErrorType.RECEIVE_TIMEOUT) {
      throw TimeoutException();
    }
  }
}
