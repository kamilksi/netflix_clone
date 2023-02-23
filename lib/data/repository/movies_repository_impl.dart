import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/data/dto%20/response/movies_response_dto.dart';
import 'package:netflix_clone/domain/data_source/movies_data_source.dart';
import 'package:netflix_clone/domain/entities/failure.dart';
import 'package:netflix_clone/domain/entities/success.dart';
import 'package:netflix_clone/domain/repositories/movies_repository.dart';

import '../../domain/entities/response/movies_response.dart';

@Injectable(as: MoviesRepository)
class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl(this._dataSource);

  final MoviesDataSource _dataSource;

  @override
  Future<Either<Failure, MoviesResponse>> getMovies() async {
    try {
      final MoviesResponseDto response = await _dataSource.getMovies();
      return Right(response.toEntity);
    } catch (err) {
      return const Left(Failure());
    }
  }
}
