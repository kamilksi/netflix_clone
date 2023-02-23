import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/entities/failure.dart';
import 'package:netflix_clone/domain/entities/response/movies_response.dart';
import 'package:netflix_clone/domain/repositories/movies_repository.dart';

@injectable
class GetMoviesUseCase {
  GetMoviesUseCase(this._repo);
  final MoviesRepository _repo;

  Future<Either<Failure, MoviesResponse>> call() => _repo.getMovies();
}
