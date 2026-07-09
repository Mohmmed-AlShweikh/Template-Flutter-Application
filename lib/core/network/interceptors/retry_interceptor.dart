import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  final Dio dio;
  RetryInterceptor(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.type == DioExceptionType.connectionError) {
      try {
        final response = await dio.fetch(err.requestOptions);
      

        handler.resolve(response);

        return;
      } catch (_) {}
    }

    handler.next(err);
  }
}
