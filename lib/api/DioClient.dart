import 'package:dio/dio.dart';

class DioClient {
  static final String _apiKey = "054022eaeae0b00e0fc068c0c0a2102a";

  static Dio _dio;

  DioClient._();

  static Dio getInstance() {
    if (_dio == null) {
      _dio = Dio();
      BaseOptions options = new BaseOptions(
          baseUrl: "https://frodo.douban.com/api/v2/",
          receiveTimeout: 20000,
          connectTimeout: 20000);
      _dio.options = options;
      _dio.interceptors.add(InterceptorsWrapper(
          onRequest: (RequestOptions options) {
            // 添加apikey参数
            options.queryParameters.putIfAbsent("apiKey", () => _apiKey);
          },
          onResponse: (Response response) {
            print(" request = ${response.request.uri}\n response = ${response.data}");

          }));
    }
    return _dio;
  }
}
