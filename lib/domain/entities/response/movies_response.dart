import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'movies_response.freezed.dart';

@freezed
class MoviesResponse with _$MoviesResponse {
  const factory MoviesResponse({required List<Movie> results}) = _MoviesResponse;
}
