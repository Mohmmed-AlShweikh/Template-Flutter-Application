import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor extends Interceptor {
  final Logger logger = Logger();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i('''
REQUEST
METHOD: ${options.method}
URL: ${options.uri}
HEADERS: ${options.headers}
BODY: ${options.data}
''');

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i('''
RESPONSE
STATUS: ${response.statusCode}
URL: ${response.requestOptions.uri}
BODY: ${response.data}
''');

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e('''
ERROR
STATUS: ${err.response?.statusCode}
URL: ${err.requestOptions.uri}
MESSAGE: ${err.message}
''');

    handler.next(err);
  }
}
