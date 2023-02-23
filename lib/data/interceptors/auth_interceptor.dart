import 'package:dio/dio.dart';

class AuthInterceptor extends QueuedInterceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.path = '${options.path}?api_key=9cd790bdfc1c6c1ab8425420fac63577';
    handler.next(options);
  }
}
