import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.type == DioExceptionType.connectionError) {
      try {
        final response = await Dio().fetch(
          err.requestOptions,
        );

        handler.resolve(response);

        return;
      } catch (_) {}
    }

    handler.next(err);
  }
}