import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/entities/failure.dart';
import 'package:netflix_clone/domain/entities/success.dart';
import 'package:netflix_clone/domain/repositories/movies_repository.dart';

@Injectable(as: MoviesRepository)
class MoviesRepositoryImpl implements MoviesRepository {
  @override
  Future<Either<Failure, Success>> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }
}
