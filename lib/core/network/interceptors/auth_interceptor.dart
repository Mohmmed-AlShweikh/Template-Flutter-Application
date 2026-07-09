import 'package:dio/dio.dart';

import '../../storage/shared_preferences_service.dart';

class AuthInterceptor extends Interceptor {
  final SharedPreferencesService storage;

  AuthInterceptor(this.storage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = storage.getString('token');

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    options.headers['Accept'] = 'application/json';

    handler.next(options);
  }
}
