import 'package:dio/dio.dart';
import 'package:netflix_clone/domain/data_source/movies_data_source.dart';
import 'package:retrofit/http.dart';

import '../../networking_config/networking_config.dart';
import '../dto /response/movies_response_dto.dart';

part "movies_data_source_impl.g.dart";

@RestApi()
abstract class MoviesDataSourceImpl implements MoviesDataSource {
  factory MoviesDataSourceImpl(Dio dio) = _MoviesDataSourceImpl;

  @override
  @GET(NetworkingEndpoints.getMovies)
  Future<MoviesResponseDto> getMovies();

  @override
  @GET(NetworkingEndpoints.getTvShows)
  Future<void> getTvShows();
}
