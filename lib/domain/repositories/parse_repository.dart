import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/entities/failure.dart';

abstract class ParseRepository {
  Future<Either<Failure, List<Movie>>> getMovies(String api);
  Future<Either<Failure, List<Genres>>> getGenres(String api);
}
