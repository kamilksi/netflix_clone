import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/response/movie.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
class MovieDto with _$MovieDto {
  const factory MovieDto({
    @JsonKey(name: 'poster_path') required String posterPath,
    required String title,
    required String overview,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}

extension MovieDtoExtension on MovieDto {
  Movie get toEntity => Movie(
      posterPath: posterPath,
      title: title,
      overview: overview,
      releaseDate: releaseDate,
      voteAverage: voteAverage);
}
