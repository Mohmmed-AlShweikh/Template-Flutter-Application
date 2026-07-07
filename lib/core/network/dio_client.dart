import 'package:dio/dio.dart';

import '../storage/shared_preferences_service.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logger_interceptor.dart';
import 'interceptors/retry_interceptor.dart';

class DioClient {
  late final Dio dio;

  DioClient(
    SharedPreferencesService storage,
  ) {
    dio = Dio(
      BaseOptions(
        baseUrl: "...",
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.addAll([
      AuthInterceptor(storage),
      LoggerInterceptor(),
      RetryInterceptor(),
    ]);
  }

  Future<Response<dynamic>> get(
  String path, {
  Map<String, dynamic>? queryParameters,
}) async {
  return await dio.get(
    path,
    queryParameters: queryParameters,
  );
}

Future<Response<dynamic>> post(
  String path, {
  dynamic data,
  Map<String, dynamic>? queryParameters,
}) async {
  return await dio.post(
    path,
    data: data,
    queryParameters: queryParameters,
  );
}

Future<Response<dynamic>> put(
  String path, {
  dynamic data,
}) async {
  return await dio.put(
    path,
    data: data,
  );
}

Future<Response<dynamic>> delete(
  String path, {
  dynamic data,
}) async {
  return await dio.delete(
    path,
    data: data,
  );
}
}