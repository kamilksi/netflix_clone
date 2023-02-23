import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/entities/failure.dart';
import 'package:netflix_clone/domain/entities/success.dart';
import 'package:netflix_clone/domain/repositories/parse_repository.dart';

@injectable
class GetGenresUseCase {
  GetGenresUseCase(this._repo);
  final ParseRepository _repo;

  Future<Either<Failure, Success>> call(String api) => _repo.getGenres(api);
}
