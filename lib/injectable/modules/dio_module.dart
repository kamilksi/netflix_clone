import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/data/interceptors/auth_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../injectable.dart';

const _timeout = Duration(seconds: 20);

String baseUrl = 'https://api.themoviedb.org';

@module
abstract class DioModule {
  @Named('netflixDio')
  @Singleton()
  Dio get client => Dio(
        BaseOptions(
          connectTimeout: _timeout.inMilliseconds,
          receiveTimeout: _timeout.inMilliseconds,
          sendTimeout: _timeout.inMilliseconds,
          baseUrl: baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
}

void registerInterceptors() {
  final dio = getIt<Dio>(instanceName: 'netflixDio');
  dio.interceptors.addAll(
    [
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: false,
        maxWidth: 90,
      ),
      AuthInterceptor(),
    ],
  );
}
