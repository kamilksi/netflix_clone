import 'package:dio/dio.dart';

const String yourApiKey = "?api_key=";

class AuthInterceptor extends QueuedInterceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.path = '${options.path}${yourApiKey}';
    handler.next(options);
  }
}
