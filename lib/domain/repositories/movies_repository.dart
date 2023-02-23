import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/entities/failure.dart';
import 'package:netflix_clone/domain/entities/success.dart';

abstract class MoviesRepository {
  Future<Either<Failure, Success>> getMovies();
}
