import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/data/dto%20/response/movie_dto.dart';
import 'package:netflix_clone/domain/entities/response/movies_response.dart';

part 'movies_response_dto.freezed.dart';
part 'movies_response_dto.g.dart';

@freezed
class MoviesResponseDto with _$MoviesResponseDto {
  const factory MoviesResponseDto({required List<MovieDto> results}) = _MoviesResponseDto;

  factory MoviesResponseDto.fromJson(Map<String, dynamic> json) => _$MoviesResponseDtoFromJson(json);
}

extension MoviesResponseDtoExtension on MoviesResponseDto {
  MoviesResponse get toEntity => MoviesResponse(
        results: results.map((e) => e.toEntity).toList(),
      );
}
