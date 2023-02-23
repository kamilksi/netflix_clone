import 'package:netflix_clone/data/dto%20/response/movies_response_dto.dart';

abstract class MoviesDataSource {
  Future<MoviesResponseDto> getMovies();
  Future<void> getTvShows();
}
