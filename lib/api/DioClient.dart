import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioClient {
  static Dio _dio;

  DioClient._();

  static Dio getInstance() {
    if (_dio == null) {
      _dio = Dio();
      BaseOptions options = new BaseOptions(
          baseUrl: "https://www.v2ex.com",
          receiveTimeout: 20000,
          connectTimeout: 20000);
      _dio.options = options;
    }
    return _dio;
  }
}
