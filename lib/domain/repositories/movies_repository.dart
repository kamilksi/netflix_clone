import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/entities/failure.dart';

import '../entities/response/movies_response.dart';

abstract class MoviesRepository {
  Future<Either<Failure, MoviesResponse>> getMovies();
}
