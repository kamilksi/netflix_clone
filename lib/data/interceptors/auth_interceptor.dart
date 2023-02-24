import 'package:dio/dio.dart';

// const String yourApiKey = "?api_key=";
const String yourApiKey = "?api_key=9cd790bdfc1c6c1ab8425420fac63577";

class AuthInterceptor extends QueuedInterceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.path = '${options.path}${yourApiKey}';
    handler.next(options);
  }
}
