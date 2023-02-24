import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String posterPath,
    required String title,
    required String overview,
    required String releaseDate,
    required double voteAverage,
  }) = _Movie;
}
