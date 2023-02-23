import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/data_source/movies_data_source.dart';
import 'package:netflix_clone/domain/entities/failure.dart';
import 'package:netflix_clone/domain/entities/success.dart';
import 'package:netflix_clone/domain/repositories/movies_repository.dart';

@Injectable(as: MoviesRepository)
class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl(this._dataSource);

  final MoviesDataSource _dataSource;

  @override
  Future<Either<Failure, Success>> getMovies() async {
    try {
      await _dataSource.getMovies();
      return const Right(Success());
    } catch (err) {
      return const Left(Failure());
    }
  }
}
