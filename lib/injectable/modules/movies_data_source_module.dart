import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/data/data_source/movies_data_source_impl.dart';
import 'package:netflix_clone/domain/data_source/movies_data_source.dart';

@module
abstract class MoviesDataSourceModule {
  MoviesDataSource parseDataSource(@Named('netflixDio') Dio dio) => MoviesDataSourceImpl(dio);
}
