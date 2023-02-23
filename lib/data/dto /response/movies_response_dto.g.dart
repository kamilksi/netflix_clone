// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesResponseDto _$$_MoviesResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_MoviesResponseDto(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MoviesResponseDtoToJson(
        _$_MoviesResponseDto instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
